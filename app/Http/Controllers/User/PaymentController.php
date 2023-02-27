<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BreadcrumbImage;
use Auth;
use App\Models\Country;
use App\Models\CountryState;
use App\Models\City;
use App\Models\Vendor;
use App\Models\Order;
use App\Models\OrderProduct;
use App\Models\OrderProductVariant;
use App\Models\OrderAddress;
use App\Models\Product;
use App\Models\Setting;
use App\Models\StripePayment;
use App\Mail\OrderSuccessfully;
use App\Helpers\MailHelper;
use App\Models\EmailTemplate;
use App\Models\RazorpayPayment;
use App\Models\Flutterwave;
use App\Models\PaystackAndMollie;
use App\Models\InstamojoPayment;
use App\Models\Coupon;
use App\Models\ShoppingCart;
use App\Models\ProductVariantItem;
use App\Models\FlashSaleProduct;
use App\Models\FlashSale;
use App\Models\Shipping;
use App\Models\Address;
use App\Models\SslcommerzPayment;
use App\Models\ShoppingCartVariant;
use Mail;
Use Stripe;
use Cart;
use Session;
use Str;
use Razorpay\Api\Api;
use Exception;
use Redirect;

use App\Library\SslCommerz\SslCommerzNotification;
use Mollie\Laravel\Facades\Mollie;


class PaymentController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth:api')->except('molliePaymentSuccess','instamojoResponse','sslcommerz_success','sslcommerz_failed');
  }


  public function cashOnDelivery(Request $request){

    $rules = [
      'shipping_address_id'=>'required',
      'billing_address_id'=>'required',
      // 'shipping_method_id'=>'required',
    ];
    $customMessages = [
      'shipping_address_id.required' => trans('Shipping address is required'),
      'billing_address_id.required' => trans('Billing address is required'),
      // 'shipping_method_id.required' => trans('Shipping method is required'),
    ];
    $this->validate($request, $rules,$customMessages);

    $user = Auth::guard('api')->user();

    $total = $this->calculateCartTotal($user, $request->coupon);
    $total_price = $total['total_price'];
    $coupon_price = $total['coupon_price'];
    $shipping_fee = $total['shipping_fee'];
    $productWeight = $total['productWeight'];
    $shipping = $total['shipping'];
    $total_qty = $total['total_qty'];

    $respon = $this->createShipment($request->billing_address_id,$productWeight,$total_price,$total_qty,$request->shipping_rate);
    if(!$respon->Shipments->ProcessedShipment->ID)
      return response()->json(['message' => "There is some error creating Shipment."],403);

    $ship_track = $respon->Shipments->ProcessedShipment->ID;

    $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
    $setting = Setting::first();

    $amount_real_currency = $total_price;
    $amount_usd = round($total_price / $setting->currency_rate,2);
    $currency_rate = $setting->currency_rate;
    $currency_icon = $setting->currency_icon;
    $currency_name = $setting->currency_name;

    $transaction_id = $request->razorpay_payment_id;
    $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Cash on Delivery', 'cash_on_delivery', 0, $shipping, $shipping_fee, $coupon_price, 1, $request->billing_address_id, $request->shipping_address_id,$ship_track);

    
    
    $this->sendOrderSuccessMail($user, $total_price, 'Cash on Delivery', 0, $order_result['order'], $order_result['order_details']);

    $notification = trans('user_validation.Order submited successfully. please wait for admin approval');

    $order = $order_result['order'];
    $order_id = $order->order_id;

    return response()->json(['message' => $notification, 'order_id' => $order_id],200);

  }
  public function createShipment($address_id,$productWeight,$total_price,$total_qty,$shipping_rate)
  {
    $setting = Setting::first();
    $user = Auth::guard('api')->user();
    $billing = Address::find($address_id);
    $total_amount = $total_price + $shipping_rate;

    $soapClient = new \SoapClient(storage_path('aramex/shipping-services-api-wsdl.wsdl'));

    $params = array(
      'Shipments' => array(
        'Shipment' => array(
          'Shipper'   => array(
            'Reference1'    => 'Ref 111111',
            'Reference2'    => 'Ref 222222',
            'AccountNumber' => '60520280',
            'PartyAddress'  => array(
              'Line1'                 => env('ORIGIN_LINE1'),
              'Line2'                 => '',
              'Line3'                 => '',
              'City'                  => env('ORIGIN_CITY'),
              'StateOrProvinceCode'   => '',
              'PostCode'              => '',
              'CountryCode'           => env('ORIGIN_COUNTRY_CODE')
            ),
            'Contact'       => array(
              'Department'            => '',
              'PersonName'            => 'Zahraa',
              'Title'                 => 'Zahraa',
              'CompanyName'           => 'Dakkaken Group for Online Trading',
              'PhoneNumber1'          => '5555555',
              'PhoneNumber1Ext'       => '125',
              'PhoneNumber2'          => '',
              'PhoneNumber2Ext'       => '',
              'FaxNumber'             => '',
              'CellPhone'             => '07777777',
              'EmailAddress'          => 'zahraa.muzahem@icloud.com',
              'Type'                  => ''
            ),
          ),

          'Consignee' => array(
            'Reference1'    => 'Ref 333333',
            'Reference2'    => 'Ref 444444',
            'AccountNumber' => '',
            'PartyAddress'  => array(
              'Line1'                 => $billing->address,
              'Line2'                 => '',
              'Line3'                 => '',
              'City'                  => $billing->city->name,
              'StateOrProvinceCode'   => '',
              'PostCode'              => '',
              'CountryCode'           => $billing->country->code
            ),

            'Contact'       => array(
              'Department'            => '',
              'PersonName'            => $billing->name,
              'Title'                 => '',
              'CompanyName'           => $billing->name,
              'PhoneNumber1'          => $billing->phone,
              'PhoneNumber1Ext'       => '',
              'PhoneNumber2'          => $billing->phone,
              'PhoneNumber2Ext'       => '',
              'FaxNumber'             => '',
              'CellPhone'             => $billing->phone,
              'Telephone'             => $billing->phone,
              'EmailAddress'          => $billing->email,
              'Type'                  => ''
            ),
          ),


          'Reference1'                => 'Shpt '.time(),
          'Reference2'                => '',
          'Reference3'                => '',
          'ForeignHAWB'               => 'ABC '.time(),
          'TransportType'             => 0,
          'ShippingDateTime'          => time(),
          'DueDate'                   => time(),
          'PickupLocation'            => 'Reception',
          'PickupGUID'                => '',
          'Comments'                  => 'Shpt 0001',
          'AccountingInstrcutions'    => '',
          'OperationsInstructions'    => '',

          'Details' => array(
            'Dimensions' => array(
              'Length'                => 10,
              'Width'                 => 10,
              'Height'                => 10,
              'Unit'                  => 'cm',

            ),

            'ActualWeight' => array(
              'Value'                 => $productWeight,
              'Unit'                  => 'Kg'
            ),

            'ProductGroup'          => 'EXP',
            'ProductType'           => 'PDX',
            'PaymentType'           => 'P',
            'PaymentOptions'        => '',
            'Services'              => '',
            'NumberOfPieces'        => $total_qty,
            'DescriptionOfGoods'    => 'Docs',
            'GoodsOriginCountry'    => 'Jo',

            'CashOnDeliveryAmount'  => array(
              'Value'                 => 0,
              // 'Value'                 => $total_amount,
              'CurrencyCode'          => ''
              // 'CurrencyCode'          => $setting->currency_icon
            ),

            'InsuranceAmount'       => array(
              'Value'                 => 0,
              'CurrencyCode'          => ''
            ),

            'CollectAmount'         => array(
              'Value'                 => 0,
              'CurrencyCode'          => ''
            ),

            'CashAdditionalAmount'  => array(
              'Value'                 => 0,
              'CurrencyCode'          => ''                           
            ),

            'CashAdditionalAmountDescription' => '',

            'CustomsValueAmount' => array(
              'Value'                 => 0,
              'CurrencyCode'          => ''                               
            ),

            'Items'                 => array(

            )
          ),
        ),
      ),

      'ClientInfo'            => array(
        'AccountNumber'         => '60520280',
        'UserName'              => 'zahraa.muzahem@icloud.com',
        'Password'              => 'Zahraa@20',
        'AccountPin'            => '321321',
        'AccountEntity'         => 'DOH',
        'AccountCountryCode'    => 'QA',
        'Version'               => 'v1',
        'Source'             => null
      ),

      'Transaction'           => array(
        'Reference1'            => '001',
        'Reference2'            => '', 
        'Reference3'            => '', 
        'Reference4'            => '', 
        'Reference5'            => '',                                  
      ),
      'LabelInfo'             => array(
        'ReportID'              => 9201,
        'ReportType'            => 'URL',
      ),
      );

      $params['Shipments']['Shipment']['Details']['Items'][] = array(
        'PackageType'   => 'Box',
        'Quantity'      => 1,
        'Weight'        => array(
          'Value'     => $productWeight,
          'Unit'      => 'Kg',        
        ),
        'Comments'      => 'Docs',
        'Reference'     => ''
      );


      try {
        $auth_call = $soapClient->CreateShipments($params);
        return $auth_call;
      } catch (SoapFault $fault) {
        die('Error : ' . $fault->faultstring);
      }
  }
public function payWithStripe(Request $request){

  $rules = [
    'shipping_address_id'=>'required',
    'billing_address_id'=>'required',
    'shipping_method_id'=>'required',
    'card_number'=>'required',
    'year'=>'required',
    'month'=>'required',
    'cvv'=>'required',
  ];
  $customMessages = [
    'shipping_address_id.required' => trans('Shipping address is required'),
    'billing_address_id.required' => trans('Billing address is required'),
    'shipping_method_id.required' => trans('Shipping method is required'),
    'card_number.required' => trans('Card number is required'),
    'year.required' => trans('Year is required'),
    'month.required' => trans('Month is required'),
    'cvv.required' => trans('Cvv is required'),
  ];
  $this->validate($request, $rules,$customMessages);

  $user = Auth::guard('api')->user();
  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);

  $total_price = $total['total_price'];
  $coupon_price = $total['coupon_price'];
  $shipping_fee = $total['shipping_fee'];
  $productWeight = $total['productWeight'];
  $shipping = $total['shipping'];

  $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
  $setting = Setting::first();

  $amount_real_currency = $total_price;
  $amount_usd = round($total_price / $setting->currency_rate,2);
  $currency_rate = $setting->currency_rate;
  $currency_icon = $setting->currency_icon;
  $currency_name = $setting->currency_name;

  $stripe = StripePayment::first();
  $payableAmount = round($total_price * $stripe->currency_rate,2);
  Stripe\Stripe::setApiKey($stripe->stripe_secret);

  try{
    $token = Stripe\Token::create([
      'card' => [
        'number' => $request->card_number,
        'exp_month' => $request->month,
        'exp_year' => $request->year,
        'cvc' => $request->cvc,
      ],
    ]);
  }catch (Exception $e) {
    return response()->json(['error' => 'Please provide valid card information'],403);
  }

  if (!isset($token['id'])) {
    return response()->json(['error' => 'Payment faild'],403);
  }

  $result = Stripe\Charge::create([
    'card' => $token['id'],
    'currency' => $stripe->currency_code,
    'amount' => $payableAmount * 100,
    'description' => env('APP_NAME'),
  ]);

  if($result['status'] != 'succeeded') {
    return response()->json(['error' => 'Payment faild'],403);
  }

  $transaction_id = $result['balance_transaction'];
  $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Stripe', $transaction_id, 1, $shipping, $shipping_fee, $coupon_price, 0,$request->billing_address_id, $request->shipping_address_id);

  $this->sendOrderSuccessMail($user, $total_price, 'Stripe', 1, $order_result['order'], $order_result['order_details']);


  $notification = trans('user_validation.Payment Successfully');
  $order = $order_result['order'];
  $order_id = $order->order_id;

  return response()->json(['message' => $notification, 'order_id' => $order_id],200);

}

public function razorpayOrder(Request $request){
  $user = Auth::guard('api')->user();

  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);
  $razorpay = RazorpayPayment::first();
  $total_price = $total['total_price'];
  $payable_amount = $total_price * $razorpay->currency_rate;
  $payable_amount = round($payable_amount, 2);
  $api = new Api($razorpay->key,$razorpay->secret_key);
  $order = $api->order->create(
    array('receipt' => '123', 'amount' => ($payable_amount * 100), 'currency' => $razorpay->currency_code)
  );

  $data = [
    "key"               => $razorpay->key,
    "amount"            => $payable_amount * 100,
    "order_id"          => $order->id,
  ];

  return response()->json($data, 200);
}

public function razorpayWebView(Request $request){

  $rules = [
    'order_id'=>'required',
    'request_from'=>'required',
    'shipping_address_id'=>'required',
    'billing_address_id'=>'required',
    'shipping_method_id'=>'required',
    'amount'=>'required',
  ];
  $this->validate($request, $rules);

  $user = Auth::guard('api')->user();
  $cartProducts = ShoppingCart::with('product','variants.variantItem')->where('user_id', $user->id)->select('id','product_id','qty')->get();
  if($cartProducts->count() == 0){
    $notification = trans('Your shopping cart is empty');
    return response()->json(['message' => $notification],403);
  }


  $orderId = $request->order_id;
  $razorpay = RazorpayPayment::first();
  $razorpay_key = $razorpay->key;
  $payable_amount = $request->amount;

        // Session::put('razorpay_order_id', $orderId);
        // Session::put('frontend_success_url', $request->frontend_success_url);
        // Session::put('frontend_faild_url', $request->frontend_faild_url);
        // Session::put('request_from', $request->request_from);
        // Session::put('shipping_address_id', $request->shipping_address_id);
        // Session::put('billing_address_id', $request->billing_address_id);
        // Session::put('shipping_method_id', $request->shipping_method_id);
        // Session::put('coupon', $request->coupon);
        // Session::put('amount', $request->amount);


  $frontend_success_url = $request->frontend_success_url;
  $frontend_faild_url = $request->frontend_faild_url;
  $request_from = $request->request_from;
  $shipping_address_id = $request->shipping_address_id;
  $billing_address_id = $request->billing_address_id;
  $shipping_method_id = $request->shipping_method_id;
  $coupon = $request->coupon;
  $token = $request->token;

  return view('razorpay_webview', compact('orderId','razorpay','payable_amount','frontend_success_url','frontend_faild_url','request_from','shipping_address_id','billing_address_id','shipping_method_id','coupon','token'));
}


public function razorpayVerify(Request $request){
  $success = true;
  $error = "Payment Failed!";

  if (empty($request->razorpay_payment_id) === false) {
    $razorpay = RazorpayPayment::first();
    $api = new Api($razorpay->key,$razorpay->secret_key);
    try {
      $attributes = [
        'razorpay_order_id' => $request->razorpay_order_id,
        'razorpay_payment_id' => $request->razorpay_payment_id,
        'razorpay_signature' => $request->razorpay_signature
      ];
      $api->utility->verifyPaymentSignature($attributes);
    } catch (SignatureVerificationError $e) {
      $success = false;
      $error = 'Razorpay Error : ' . $e->getMessage();
    }
  }

  if ($success === true) {

    $user = Auth::guard('api')->user();

    $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);

    $total_price = $total['total_price'];
    $coupon_price = $total['coupon_price'];
    $shipping_fee = $total['shipping_fee'];
    $productWeight = $total['productWeight'];
    $shipping = $total['shipping'];

    $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
    $setting = Setting::first();

    $amount_real_currency = $total_price;
    $amount_usd = round($total_price / $setting->currency_rate,2);
    $currency_rate = $setting->currency_rate;
    $currency_icon = $setting->currency_icon;
    $currency_name = $setting->currency_name;

    $transaction_id = $request->razorpay_payment_id;
    $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Razorpay', $transaction_id, 1, $shipping, $shipping_fee, $coupon_price, 0,$request->billing_address_id, $request->shipping_address_id);

    $this->sendOrderSuccessMail($user, $total_price, 'Razorpay', 1, $order_result['order'], $order_result['order_details']);

    if($request->request_from == 'react_web'){
      $order = $order_result['order'];
      $success_url = $request->frontend_success_url;
      $success_url = $success_url. "/" . $order->order_id;
      return redirect($success_url);
    }else{
      return redirect()->route('user.checkout.order-success-url-for-mobile-app');
    }
  } else {
    if($request->request_from == 'react_web'){
      $faild_url = $request->frontend_faild_url;
    }else{
      return redirect()->route('user.checkout.order-fail-url-for-mobile-app');
    }
  }

}


public function flutterwaveWebView(Request $request){

  $flutterwave = Flutterwave::first();
  $user = Auth::guard('api')->user();

  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);
  $total_price = $total['total_price'];

  $frontend_success_url = $request->frontend_success_url;
  $frontend_faild_url = $request->frontend_faild_url;
  $request_from = $request->request_from;
  $shipping_address_id = $request->shipping_address_id;
  $billing_address_id = $request->billing_address_id;
  $shipping_method_id = $request->shipping_method_id;
  $coupon = $request->coupon;
  $token = $request->token;

  return view('flutterwave_webview', compact('flutterwave','user','total_price','frontend_success_url','frontend_faild_url','request_from','shipping_address_id','billing_address_id','shipping_method_id','coupon','token'));
}

public function payWithFlutterwave(Request $request){
  $flutterwave = Flutterwave::first();
  $curl = curl_init();
  $tnx_id = $request->tnx_id;
  $url = "https://api.flutterwave.com/v3/transactions/$tnx_id/verify";
  $token = $flutterwave->secret_key;
  curl_setopt_array($curl, array(
    CURLOPT_URL => $url,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
      "Content-Type: application/json",
      "Authorization: Bearer $token"
    ),
  ));

  $response = curl_exec($curl);

  curl_close($curl);
  $response = json_decode($response);


  if($response->status == 'success'){
    $user = Auth::guard('api')->user();

    $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);

    $total_price = $total['total_price'];
    $coupon_price = $total['coupon_price'];
    $shipping_fee = $total['shipping_fee'];
    $productWeight = $total['productWeight'];
    $shipping = $total['shipping'];



    $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
    $setting = Setting::first();

    $amount_real_currency = $total_price;
    $amount_usd = round($total_price / $setting->currency_rate,2);
    $currency_rate = $setting->currency_rate;
    $currency_icon = $setting->currency_icon;
    $currency_name = $setting->currency_name;

    $transaction_id = $request->tnx_id;
    $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Flutterwave', $transaction_id, 1, $shipping, $shipping_fee, $coupon_price, 0,$request->billing_address_id, $request->shipping_address_id);

    $this->sendOrderSuccessMail($user, $total_price, 'Flutterwave', 1, $order_result['order'], $order_result['order_details']);

    $order = $order_result['order'];
    $order_id = $order->order_id;
    $notification = trans('user_validation.Payment Successfully');
    return response()->json(['status' => 'success' , 'message' => $notification, 'order_id' => $order_id],200);
  }else{
    $notification = trans('user_validation.Payment Faild');
    return response()->json(['status' => 'faild' , 'message' => $notification],403);
  }
}

public function payWithMollie(Request $request){
  $rules = [
    'request_from'=>'required',
    'shipping_address_id'=>'required',
    'billing_address_id'=>'required',
    'shipping_method_id'=>'required',
  ];
  $this->validate($request, $rules);

  $user = Auth::guard('api')->user();

  Session::put('frontend_success_url', $request->frontend_success_url);
  Session::put('frontend_faild_url', $request->frontend_faild_url);
  Session::put('request_from', $request->request_from);
  Session::put('shipping_address_id', $request->shipping_address_id);
  Session::put('billing_address_id', $request->billing_address_id);
  Session::put('shipping_method_id', $request->shipping_method_id);
  Session::put('coupon', $request->coupon);
  Session::put('user', $user);

  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);

  $total_price = $total['total_price'];
  $coupon_price = $total['coupon_price'];
  $shipping_fee = $total['shipping_fee'];
  $productWeight = $total['productWeight'];
  $shipping = $total['shipping'];

  $setting = Setting::first();

  $amount_real_currency = $total_price;
  $mollie = PaystackAndMollie::first();
  $price = $amount_real_currency * $mollie->mollie_currency_rate;
  $price = sprintf('%0.2f', $price);

  $mollie_api_key = $mollie->mollie_key;
  $currency = strtoupper($mollie->mollie_currency_code);
  Mollie::api()->setApiKey($mollie_api_key);
  $payment = Mollie::api()->payments()->create([
    'amount' => [
      'currency' => $currency,
      'value' => ''.$price.'',
    ],
    'description' => env('APP_NAME'),
    'redirectUrl' => route('user.checkout.mollie-payment-success'),
  ]);

  $payment = Mollie::api()->payments()->get($payment->id);
  session()->put('payment_id',$payment->id);
  return redirect($payment->getCheckoutUrl(), 303);
}

public function molliePaymentSuccess(Request $request){
  $mollie = PaystackAndMollie::first();
  $mollie_api_key = $mollie->mollie_key;
  Mollie::api()->setApiKey($mollie_api_key);
  $payment = Mollie::api()->payments->get(session()->get('payment_id'));
  if ($payment->isPaid()){

    $user = Session::get('user');
    $coupon = Session::get('coupon');
    $shipping_address_id = Session::get('shipping_address_id');
    $billing_address_id = Session::get('billing_address_id');
    $shipping_method_id = Session::get('shipping_method_id');
    $payment_id = Session::get('payment_id');

    $total = $this->calculateCartTotal($user, $coupon, $shipping_method_id);

    $total_price = $total['total_price'];
    $coupon_price = $total['coupon_price'];
    $shipping_fee = $total['shipping_fee'];
    $productWeight = $total['productWeight'];
    $shipping = $total['shipping'];

    $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
    $setting = Setting::first();

    $amount_real_currency = $total_price;
    $amount_usd = round($total_price / $setting->currency_rate,2);
    $currency_rate = $setting->currency_rate;
    $currency_icon = $setting->currency_icon;
    $currency_name = $setting->currency_name;

    $transaction_id = $payment_id;
    $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Mollie', $transaction_id, 1, $shipping, $shipping_fee, $coupon_price, 0,$billing_address_id, $shipping_address_id);

    $this->sendOrderSuccessMail($user, $total_price, 'Mollie', 1, $order_result['order'], $order_result['order_details']);

    $frontend_success_url = Session::get('frontend_success_url');
    $request_from = Session::get('request_from');

    if($request_from == 'react_web'){
      $order = $order_result['order'];
      $success_url = $frontend_success_url;
      $success_url = $success_url. "/" . $order->order_id;
      return redirect($success_url);
    }else{
      return redirect()->route('user.checkout.order-success-url-for-mobile-app');
    }
  }else{
    $frontend_faild_url = Session::get('frontend_faild_url');
    $request_from = Session::get('request_from');

    if($request_from == 'react_web'){
      return redirect($frontend_faild_url);
    }else{
      return redirect()->route('user.checkout.order-fail-url-for-mobile-app');
    }
  }
}


public function paystackWebView(Request $request){
  $paystack = PaystackAndMollie::first();
  $user = Auth::guard('api')->user();

  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);
  $total_price = $total['total_price'];

  $frontend_success_url = $request->frontend_success_url;
  $frontend_faild_url = $request->frontend_faild_url;
  $request_from = $request->request_from;
  $shipping_address_id = $request->shipping_address_id;
  $billing_address_id = $request->billing_address_id;
  $shipping_method_id = $request->shipping_method_id;
  $coupon = $request->coupon;
  $token = $request->token;

  return view('paystack_webview', compact('paystack','user','total_price','frontend_success_url','frontend_faild_url','request_from','shipping_address_id','billing_address_id','shipping_method_id','coupon','token'));
}

public function payWithPayStack(Request $request){
  $paystack = PaystackAndMollie::first();

  $reference = $request->reference;
  $transaction = $request->tnx_id;
  $secret_key = $paystack->paystack_secret_key;
  $curl = curl_init();
  curl_setopt_array($curl, array(
    CURLOPT_URL => "https://api.paystack.co/transaction/verify/$reference",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_SSL_VERIFYHOST =>0,
    CURLOPT_SSL_VERIFYPEER =>0,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
      "Authorization: Bearer $secret_key",
      "Cache-Control: no-cache",
    ),
  ));
  $response = curl_exec($curl);
  $err = curl_error($curl);
  curl_close($curl);
  $final_data = json_decode($response);
  if($final_data->status == true) {

    $user = Auth::guard('api')->user();

    $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);

    $total_price = $total['total_price'];
    $coupon_price = $total['coupon_price'];
    $shipping_fee = $total['shipping_fee'];
    $productWeight = $total['productWeight'];
    $shipping = $total['shipping'];

    $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
    $setting = Setting::first();

    $amount_real_currency = $total_price;
    $amount_usd = round($total_price / $setting->currency_rate,2);
    $currency_rate = $setting->currency_rate;
    $currency_icon = $setting->currency_icon;
    $currency_name = $setting->currency_name;

    $transaction_id = $request->tnx_id;
    $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Paystack', $transaction_id, 1, $shipping, $shipping_fee, $coupon_price, 0,$request->billing_address_id, $request->shipping_address_id);

    $this->sendOrderSuccessMail($user, $total_price, 'Paystack', 1, $order_result['order'], $order_result['order_details']);

    $order = $order_result['order'];
    $order_id = $order->order_id;
    $notification = trans('user_validation.Payment Successfully');
    return response()->json(['status' => 'success' , 'message' => $notification, 'order_id' => $order_id],200);
  }else{
    $notification = trans('user_validation.Payment Faild');
    return response()->json(['status' => 'faild' , 'message' => $notification],403);
  }
}


public function payWithInstamojo(Request $request){
  $rules = [
    'request_from'=>'required',
    'shipping_address_id'=>'required',
    'billing_address_id'=>'required',
    'shipping_method_id'=>'required',
  ];
  $this->validate($request, $rules);

  $user = Auth::guard('api')->user();

  Session::put('frontend_success_url', $request->frontend_success_url);
  Session::put('frontend_faild_url', $request->frontend_faild_url);
  Session::put('request_from', $request->request_from);
  Session::put('shipping_address_id', $request->shipping_address_id);
  Session::put('billing_address_id', $request->billing_address_id);
  Session::put('shipping_method_id', $request->shipping_method_id);
  Session::put('coupon', $request->coupon);
  Session::put('user', $user);

  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);

  $total_price = $total['total_price'];
  $coupon_price = $total['coupon_price'];
  $shipping_fee = $total['shipping_fee'];
  $productWeight = $total['productWeight'];
  $shipping = $total['shipping'];

  $setting = Setting::first();

  $amount_real_currency = $total_price;
  $instamojoPayment = InstamojoPayment::first();
  $price = $amount_real_currency * $instamojoPayment->currency_rate;
  $price = round($price,2);

  $environment = $instamojoPayment->account_mode;
  $api_key = $instamojoPayment->api_key;
  $auth_token = $instamojoPayment->auth_token;

  if($environment == 'Sandbox') {
    $url = 'https://test.instamojo.com/api/1.1/';
  } else {
    $url = 'https://www.instamojo.com/api/1.1/';
  }

  $ch = curl_init();

  curl_setopt($ch, CURLOPT_URL, $url.'payment-requests/');
  curl_setopt($ch, CURLOPT_HEADER, FALSE);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
  curl_setopt($ch, CURLOPT_HTTPHEADER,
    array("X-Api-Key:$api_key",
      "X-Auth-Token:$auth_token"));
  $payload = Array(
    'purpose' => env("APP_NAME"),
    'amount' => $price,
    'phone' => '918160651749',
    'buyer_name' => Auth::user()->name,
    'redirect_url' => route('user.checkout.instamojo-response'),
    'send_email' => true,
    'webhook' => 'http://www.example.com/webhook/',
    'send_sms' => true,
    'email' => Auth::user()->email,
    'allow_repeated_payments' => false
  );
  curl_setopt($ch, CURLOPT_POST, true);
  curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($payload));
  $response = curl_exec($ch);
  curl_close($ch);
  $response = json_decode($response);
  return redirect($response->payment_request->longurl);
}

public function instamojoResponse(Request $request){
  $input = $request->all();

  $instamojoPayment = InstamojoPayment::first();
  $environment = $instamojoPayment->account_mode;
  $api_key = $instamojoPayment->api_key;
  $auth_token = $instamojoPayment->auth_token;

  if($environment == 'Sandbox') {
    $url = 'https://test.instamojo.com/api/1.1/';
  } else {
    $url = 'https://www.instamojo.com/api/1.1/';
  }

  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL, $url.'payments/'.$request->get('payment_id'));
  curl_setopt($ch, CURLOPT_HEADER, FALSE);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
  curl_setopt($ch, CURLOPT_HTTPHEADER,
    array("X-Api-Key:$api_key",
      "X-Auth-Token:$auth_token"));
  $response = curl_exec($ch);
  $err = curl_error($ch);
  curl_close($ch);

  if ($err) {
    $frontend_faild_url = Session::get('frontend_faild_url');
    $request_from = Session::get('request_from');

    if($request_from == 'react_web'){
      return redirect($frontend_faild_url);
    }else{
      return redirect()->route('user.checkout.order-fail-url-for-mobile-app');
    }
  } else {
    $data = json_decode($response);
  }

  if($data->success == true) {
    if($data->payment->status == 'Credit') {
      $user = Session::get('user');
      $coupon = Session::get('coupon');
      $shipping_address_id = Session::get('shipping_address_id');
      $billing_address_id = Session::get('billing_address_id');
      $shipping_method_id = Session::get('shipping_method_id');
      $payment_id = $request->get('payment_id');

      $total = $this->calculateCartTotal($user, $coupon, $shipping_method_id);

      $total_price = $total['total_price'];
      $coupon_price = $total['coupon_price'];
      $shipping_fee = $total['shipping_fee'];
      $productWeight = $total['productWeight'];
      $shipping = $total['shipping'];

      $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
      $setting = Setting::first();

      $amount_real_currency = $total_price;
      $amount_usd = round($total_price / $setting->currency_rate,2);
      $currency_rate = $setting->currency_rate;
      $currency_icon = $setting->currency_icon;
      $currency_name = $setting->currency_name;

      $transaction_id = $payment_id;
      $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Instamojo', $transaction_id, 1, $shipping, $shipping_fee, $coupon_price, 0,$billing_address_id, $shipping_address_id);

      $this->sendOrderSuccessMail($user, $total_price, 'Instamojo', 1, $order_result['order'], $order_result['order_details']);

      $frontend_success_url = Session::get('frontend_success_url');
      $request_from = Session::get('request_from');

      if($request_from == 'react_web'){
        $order = $order_result['order'];
        $success_url = $frontend_success_url;
        $success_url = $success_url. "/" . $order->order_id;
        return redirect($success_url);
      }else{
        return redirect()->route('user.checkout.order-success-url-for-mobile-app');
      }

    }
  }

}

public function payWithBank(Request $request){
  $rules = [
    'shipping_address_id'=>'required',
    'billing_address_id'=>'required',
    'shipping_method_id'=>'required',
    'tnx_info'=>'required',
  ];
  $customMessages = [
    'shipping_address_id.required' => trans('Shipping address is required'),
    'billing_address_id.required' => trans('Billing address is required'),
    'shipping_method_id.required' => trans('Shipping method is required'),
  ];
  $this->validate($request, $rules,$customMessages);

  $user = Auth::guard('api')->user();

  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);

  $total_price = $total['total_price'];
  $coupon_price = $total['coupon_price'];
  $shipping_fee = $total['shipping_fee'];
  $productWeight = $total['productWeight'];
  $shipping = $total['shipping'];

  $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
  $setting = Setting::first();

  $amount_real_currency = $total_price;
  $amount_usd = round($total_price / $setting->currency_rate,2);
  $currency_rate = $setting->currency_rate;
  $currency_icon = $setting->currency_icon;
  $currency_name = $setting->currency_name;

  $transaction_id = $request->tnx_info;
  $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Bank Payment', $transaction_id , 0, $shipping, $shipping_fee, $coupon_price, 1, $request->billing_address_id, $request->shipping_address_id);

  $this->sendOrderSuccessMail($user, $total_price, 'Bank Payment', 0, $order_result['order'], $order_result['order_details']);

  $notification = trans('user_validation.Order submited successfully. please wait for admin approval');

  $order = $order_result['order'];
  $order_id = $order->order_id;

  return response()->json(['message' => $notification, 'order_id' => $order_id],200);
}

public function sslcommerzWebView(Request $request){

  $sslcommerzPaymentInfo = SslcommerzPayment::first();
  $user = Auth::guard('api')->user();

  $total = $this->calculateCartTotal($user, $request->coupon, $request->shipping_method_id);
  $total_price = $total['total_price'];
  $total_price = round($total_price * $sslcommerzPaymentInfo->currency_rate,2);

  $frontend_success_url = $request->frontend_success_url;
  $frontend_faild_url = $request->frontend_faild_url;
  $request_from = $request->request_from;
  $shipping_address_id = $request->shipping_address_id;
  $billing_address_id = $request->billing_address_id;
  $shipping_method_id = $request->shipping_method_id;
  $coupon = $request->coupon;
  $token = $request->token;

  Session::put('frontend_success_url', $request->frontend_success_url);
  Session::put('frontend_faild_url', $request->frontend_faild_url);
  Session::put('request_from', $request->request_from);
  Session::put('shipping_address_id', $request->shipping_address_id);
  Session::put('billing_address_id', $request->billing_address_id);
  Session::put('shipping_method_id', $request->shipping_method_id);
  Session::put('coupon', $request->coupon);
  Session::put('user', $user);


  return view('sslcommerz_webview', compact('total_price','sslcommerzPaymentInfo','token'));
}

public function sslcommerz(Request $request)
{

  $user = Auth::guard('api')->user();
  $coupon = Session::get('coupon');
  $shipping_method_id = Session::get('shipping_method_id');
  $total = $this->calculateCartTotal($user, $coupon, $shipping_method_id);
  $total_price = $total['total_price'];

  $sslcommerzPaymentInfo = SslcommerzPayment::first();
  $payableAmount = round($total_price * $sslcommerzPaymentInfo->currency_rate,2);

  $post_data = array();
        $post_data['total_amount'] = $payableAmount; # You cant not pay less than 10
        $post_data['currency'] = $sslcommerzPaymentInfo->currency_code;
        $post_data['tran_id'] = uniqid();

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = $user->name;
        $post_data['cus_email'] = $user->email ? $user->email : 'johndoe@gmail.com';
        $post_data['cus_add1'] = '';
        $post_data['cus_add2'] = "";
        $post_data['cus_city'] = "";
        $post_data['cus_state'] = "";
        $post_data['cus_postcode'] = "";
        $post_data['cus_country'] = "Country";
        $post_data['cus_phone'] =  $user->phone ? $user->phone : '123456789';
        $post_data['cus_fax'] = "";

        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "";
        $post_data['ship_add1'] = "";
        $post_data['ship_add2'] = "";
        $post_data['ship_city'] = "";
        $post_data['ship_state'] = "";
        $post_data['ship_postcode'] = "";
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = 'Test Product';
        $post_data['product_category'] = "Package";
        $post_data['product_profile'] = "Package";

        config(['sslcommerz.apiCredentials.store_id' => $sslcommerzPaymentInfo->store_id]);
        config(['sslcommerz.apiCredentials.store_password' => $sslcommerzPaymentInfo->store_password]);
        config(['sslcommerz.success_url' => '/user/checkout/sslcommerz-success']);
        config(['sslcommerz.failed_url' => '/user/checkout/sslcommerz-failed']);

        $sslc = new SslCommerzNotification(config('sslcommerz'));

        $payment_options = $sslc->makePayment($post_data, 'checkout', 'json');

        if (!is_array($payment_options)) {
          print_r($payment_options);
          $payment_options = array();
        }

      }


      public function sslcommerz_success(Request $request)
      {

        $tran_id = $request->input('tran_id');
        $amount = $request->input('amount');
        $currency = $request->input('currency');

        $sslcommerzPaymentInfo = SslcommerzPayment::first();

        config(['sslcommerz.apiCredentials.store_id' => $sslcommerzPaymentInfo->store_id]);
        config(['sslcommerz.apiCredentials.store_password' => $sslcommerzPaymentInfo->store_password]);
        config(['sslcommerz.success_url' => '/user/checkout/sslcommerz-success']);
        config(['sslcommerz.failed_url' => '/user/checkout/sslcommerz-failed']);

        $sslc = new SslCommerzNotification(config('sslcommerz'));

        $validation = $sslc->orderValidate($request->all(), $tran_id, $amount, $currency);

        if ($validation == TRUE) {
          $user = Session::get('user');
          $coupon = Session::get('coupon');
          $shipping_address_id = Session::get('shipping_address_id');
          $billing_address_id = Session::get('billing_address_id');
          $shipping_method_id = Session::get('shipping_method_id');
          $payment_id = $request->get('payment_id');

          $total = $this->calculateCartTotal($user, $coupon, $shipping_method_id);

          $total_price = $total['total_price'];
          $coupon_price = $total['coupon_price'];
          $shipping_fee = $total['shipping_fee'];
          $productWeight = $total['productWeight'];
          $shipping = $total['shipping'];

          $totalProduct = ShoppingCart::with('variants')->where('user_id', $user->id)->sum('qty');
          $setting = Setting::first();

          $amount_real_currency = $total_price;
          $amount_usd = round($total_price / $setting->currency_rate,2);
          $currency_rate = $setting->currency_rate;
          $currency_icon = $setting->currency_icon;
          $currency_name = $setting->currency_name;

          $transaction_id = $payment_id;
          $order_result = $this->orderStore($user, $total_price, $totalProduct, 'Instamojo', $transaction_id, 1, $shipping, $shipping_fee, $coupon_price, 0,$billing_address_id, $shipping_address_id);

          $this->sendOrderSuccessMail($user, $total_price, 'Instamojo', 1, $order_result['order'], $order_result['order_details']);

          $frontend_success_url = Session::get('frontend_success_url');
          $request_from = Session::get('request_from');

          if($request_from == 'react_web'){
            $order = $order_result['order'];
            $success_url = $frontend_success_url;
            $success_url = $success_url. "/" . $order->order_id;
            return redirect($success_url);
          }else{
            return response()->json(['message' => trans('Order Successfully')],200);
          }
        } else {
          $frontend_faild_url = Session::get('frontend_faild_url');
          $request_from = Session::get('request_from');

          if($request_from == 'react_web'){
            return redirect($frontend_faild_url);
          }else{
            return response()->json(['message' => trans('Payment Faild')],403);
          }
        }

      }


      public function sslcommerz_failed(Request $request)
      {
        $frontend_faild_url = Session::get('frontend_faild_url');
        $request_from = Session::get('request_from');

        if($request_from == 'react_web'){
          return redirect($frontend_faild_url);
        }else{
          return response()->json(['message' => trans('Payment Faild')],403);
        }
      }



      public function calculateCartTotal($user, $request_coupon, $request_shipping_method_id = 1){
        $total_price = 0;
        $coupon_price = 0;
        $shipping_fee = 0;
        $productWeight = 0;
        $total_qty = 0;

        $cartProducts = ShoppingCart::with('product','variants.variantItem')->where('user_id', $user->id)->select('id','product_id','qty')->get();
        if($cartProducts->count() == 0){
          $notification = trans('Your shopping cart is empty');
          return response()->json(['message' => $notification],403);
        }
        foreach($cartProducts as $index => $cartProduct){
          $variantPrice = 0;
          if($cartProduct->variants){
            foreach($cartProduct->variants as $item_index => $var_item){
              $item = ProductVariantItem::find($var_item->variant_item_id);
              if($item){
                $variantPrice += $item->price;
              }
            }
          }

          $product = Product::select('id','price','offer_price','weight')->find($cartProduct->product_id);
          $price = $product->offer_price ? $product->offer_price : $product->price;
          $price = $price + $variantPrice;
          $weight = $product->weight;
          $weight = $weight * $cartProduct->qty;
          $productWeight += $weight;
          $isFlashSale = FlashSaleProduct::where(['product_id' => $product->id,'status' => 1])->first();
          $today = date('Y-m-d H:i:s');
          if($isFlashSale){
            $flashSale = FlashSale::first();
            if($flashSale->status == 1){
              if($today <= $flashSale->end_time){
                $offerPrice = ($flashSale->offer / 100) * $price;
                $price = $price - $offerPrice;
              }
            }
          }

          $total_qty += $cartProduct->qty;
          $price = $price * $cartProduct->qty;
          $total_price += $price;
        }

        // calculate coupon coast
        if($request_coupon){
          $coupon = Coupon::where(['code' => $request_coupon, 'status' => 1])->first();
          if($coupon){
            if($coupon->expired_date >= date('Y-m-d')){
              if($coupon->apply_qty <  $coupon->max_quantity ){
                if($coupon->offer_type == 1){
                  $couponAmount = $coupon->discount;
                  $couponAmount = ($couponAmount / 100) * $total_price;
                }elseif($coupon->offer_type == 2){
                  $couponAmount = $coupon->discount;
                }
                $coupon_price = $couponAmount;

                $qty = $coupon->apply_qty;
                $qty = $qty +1;
                $coupon->apply_qty = $qty;
                $coupon->save();

              }
            }
          }
        }

        $shipping = Shipping::find($request_shipping_method_id);
        if(!$shipping){
          return response()->json(['message' => trans('Shipping method not found')],403);
        }
        if($shipping->shipping_fee == 0){
          $shipping_fee = 0;
        }else{
          $shipping_fee = $shipping->shipping_fee;
        }

        $total_price = ($total_price - $coupon_price) + $shipping_fee;
        $total_price = str_replace( array( '\'', '"', ',' , ';', '<', '>' ), '', $total_price);
        $total_price = number_format($total_price, 2, '.', '');

        $arr = [];

        $arr['total_price'] = $total_price;
        $arr['coupon_price'] = $coupon_price;
        $arr['shipping_fee'] = $shipping_fee;
        $arr['productWeight'] = $productWeight;
        $arr['shipping'] = $shipping->shipping_rule;
        $arr['total_qty'] = $total_qty;

        return $arr;
      }

      public function orderStore($user, $total_price, $totalProduct, $payment_method, $transaction_id, $paymetn_status, $shipping, $shipping_fee, $coupon_price, $cash_on_delivery,$billing_address_id,$shipping_address_id,$ship_track = ''){
        $cartProducts = ShoppingCart::with('product','variants.variantItem')->where('user_id', $user->id)->select('id','product_id','qty')->get();
        if($cartProducts->count() == 0){
          $notification = trans('Your shopping cart is empty');
          return response()->json(['message' => $notification],403);
        }

        $order = new Order();
        $orderId = substr(rand(0,time()),0,10);
        $order->order_id = $orderId;
        $order->user_id = $user->id;
        $order->total_amount = $total_price;
        $order->product_qty = $totalProduct;
        $order->payment_method = $payment_method;
        $order->transection_id = $transaction_id;
        $order->payment_status = $paymetn_status;
        $order->shipping_method = $shipping;
        $order->shipping_cost = $shipping_fee;
        $order->tracking = $ship_track;
        $order->coupon_coast = $coupon_price;
        $order->order_status = 0;
        $order->cash_on_delivery = $cash_on_delivery;
        $order->save();

        $order_details = '';
        $setting = Setting::first();
        foreach($cartProducts as $key => $cartProduct){

          $variantPrice = 0;
          if($cartProduct->variants){
            foreach($cartProduct->variants as $item_index => $var_item){
              $item = ProductVariantItem::find($var_item->variant_item_id);
              if($item){
                $variantPrice += $item->price;
              }
            }
          }

            // calculate product price
          $product = Product::select('id','price','offer_price','weight','vendor_id','qty','name')->find($cartProduct->product_id);
          $price = $product->offer_price ? $product->offer_price : $product->price;
          $price = $price + $variantPrice;
          $isFlashSale = FlashSaleProduct::where(['product_id' => $product->id,'status' => 1])->first();
          $today = date('Y-m-d H:i:s');
          if($isFlashSale){
            $flashSale = FlashSale::first();
            if($flashSale->status == 1){
              if($today <= $flashSale->end_time){
                $offerPrice = ($flashSale->offer / 100) * $price;
                $price = $price - $offerPrice;
              }
            }
          }

            // store ordre product
          $orderProduct = new OrderProduct();
          $orderProduct->order_id = $order->id;
          $orderProduct->product_id = $cartProduct->product_id;
          $orderProduct->seller_id = $product->vendor_id;
          $orderProduct->product_name = $product->name;
          $orderProduct->unit_price = $price;
          $orderProduct->qty = $cartProduct->qty;
          $orderProduct->save();

            // update product stock
          $qty = $product->qty - $cartProduct->qty;
          $product->qty = $qty;
          $product->save();

            // store prouct variant

            // return $cartProduct->variants;
          foreach($cartProduct->variants as $index => $variant){
            $item = ProductVariantItem::find($variant->variant_item_id);
            $productVariant = new OrderProductVariant();
            $productVariant->order_product_id = $orderProduct->id;
            $productVariant->product_id = $cartProduct->product_id;
            $productVariant->variant_name = $item->product_variant_name;
            $productVariant->variant_value = $item->name;
            $productVariant->save();
          }

          $order_details.='Product: '.$product->name. '<br>';
          $order_details.='Quantity: '. $cartProduct->qty .'<br>';
          $order_details.='Price: '.$setting->currency_icon . $cartProduct->qty * $price .'<br>';

        }

        // store shipping and billing address
        $billing = Address::find($billing_address_id);
        $shipping = Address::find($shipping_address_id);
        $orderAddress = new OrderAddress();
        $orderAddress->order_id = $order->id;
        $orderAddress->billing_name = $billing->name;
        $orderAddress->billing_email = $billing->email;
        $orderAddress->billing_phone = $billing->phone;
        $orderAddress->billing_address = $billing->address;
        $orderAddress->billing_country = $billing->country->name;
        $orderAddress->billing_state = $billing->countryState->name;
        $orderAddress->billing_city = $billing->city->name;
        $orderAddress->billing_address_type = $billing->type;
        $orderAddress->shipping_name = $shipping->name;
        $orderAddress->shipping_email = $shipping->email;
        $orderAddress->shipping_phone = $shipping->phone;
        $orderAddress->shipping_address = $shipping->address;
        $orderAddress->shipping_country = $shipping->country->name ;
        $orderAddress->shipping_state = $shipping->countryState->name;
        $orderAddress->shipping_city = $shipping->city->name;
        $orderAddress->shipping_address_type = $shipping->type;
        $orderAddress->save();

        foreach($cartProducts as $cartProduct){
          ShoppingCartVariant::where('shopping_cart_id', $cartProduct->id)->delete();
          $cartProduct->delete();
        }

        $arr = [];
        $arr['order'] = $order;
        $arr['order_details'] = $order_details;

        return $arr;
      }


      public function sendOrderSuccessMail($user, $total_price, $payment_method, $payment_status, $order, $order_details){
        $setting = Setting::first();

        MailHelper::setMailConfig();

        $template=EmailTemplate::where('id',6)->first();
        $subject=$template->subject;
        $message=$template->description;
        $message = str_replace('{{user_name}}',$user->name,$message);
        $message = str_replace('{{total_amount}}',$setting->currency_icon.$total_price,$message);
        $message = str_replace('{{payment_method}}',$payment_method,$message);
        $message = str_replace('{{payment_status}}',$payment_status,$message);
        $message = str_replace('{{order_status}}','Pending',$message);
        $message = str_replace('{{order_date}}',$order->created_at->format('d F, Y'),$message);
        $message = str_replace('{{order_detail}}',$order_details,$message);
        Mail::to($user->email)->send(new OrderSuccessfully($message,$subject));
      }
    }


