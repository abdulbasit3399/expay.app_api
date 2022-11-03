<?php

namespace App\Http\Controllers\User;

use Cart;
use Auth;
use Aramex;
use Session;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BreadcrumbImage;
use App\Models\Country;
use App\Models\CountryState;
use App\Models\City;
use App\Models\Address;
use App\Models\Vendor;
use App\Models\Setting;
use App\Models\Wishlist;
use App\Models\StripePayment;
use App\Models\RazorpayPayment;
use App\Models\Flutterwave;
use App\Models\PayStackAndMollie;
use App\Models\BankPayment;
use App\Models\InstamojoPayment;
use App\Models\PaypalPayment;
use App\Models\ShoppingCart;
use App\Models\Coupon;
use App\Models\Shipping;

class CheckoutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function checkout(Request $request){
        $user = Auth::guard('api')->user();
        $cartProducts = ShoppingCart::with('product','variants.variantItem')->where('user_id', $user->id)->select('id','product_id','qty')->get();

        $weight = 0;
        $qty = 0;
        $addresses = Address::with('country','countryState','city')->where(['user_id' => $user->id])->get();

        foreach ($cartProducts as $key => $cart) {
            $weight += $cart->product->weight;
            $qty += $cart->qty;
        }
        $ciy = $country_code = '';
        foreach ($addresses as $key => $addr) {
            if($addr->default_shipping == 1)
            {
                $country_code = $addr->country->code;
                $ciy = $addr->city->name;
            }
        }
        $params = array(
            'ClientInfo'            => $this->_getClientInfo(),
                                    
            'Transaction'           => array(
                                        'Reference1'            => '001' 
                                    ),
                                    
            'OriginAddress'         => array(
                                        'City'                  => env('ORIGIN_CITY'),
                                        'CountryCode'           => env('ORIGIN_COUNTRY_CODE')
                                    ),
                                    
            'DestinationAddress'    => array(
                                        'City'                  => $ciy,
                                        'CountryCode'           => $country_code
                                    ),
            'ShipmentDetails'       => array(
                                        'PaymentType'            => 'P',
                                        'ProductGroup'           => 'EXP',
                                        'ProductType'            => 'PPX',
                                        'ActualWeight'           => array('Value' => $weight, 'Unit' => 'KG'),
                                        'ChargeableWeight'       => array('Value' => $weight, 'Unit' => 'KG'),
                                        'NumberOfPieces'         => $qty
                                    )
        );
        
        $soapClient = new \SoapClient(storage_path('aramex/aramex-rates-calculator-wsdl.wsdl'), array('trace' => 1));
        $results = $soapClient->CalculateRate($params);
        $shipping_cost = 0;

        if($results->HasErrors == false)
        {
            $shipping_cost = $results->TotalAmount->Value;
        }
        else{
            return response()->json(['message' => "Address is not Valid."],403);
        }

        if($cartProducts->count() == 0){
            $notification = trans('Your shopping cart is empty');
            return response()->json(['message' => $notification],403);
        }

        
        $shippings = Shipping::all();

        $couponOffer = '';
        if($request->coupon){
            $coupon = Coupon::where(['code' => $request->coupon, 'status' => 1])->first();
            if($coupon){
                if($coupon->expired_date >= date('Y-m-d')){
                    if($coupon->apply_qty <  $coupon->max_quantity ){
                        $couponOffer = $coupon;
                    }
                }
            }
        }



        $stripePaymentInfo = StripePayment::first();
        $razorpayPaymentInfo = RazorpayPayment::first();
        $flutterwavePaymentInfo = Flutterwave::first();
        $paypalPaymentInfo = PaypalPayment::first();
        $bankPaymentInfo = BankPayment::first();


        return response()->json([
            'cartProducts' => $cartProducts,
            'addresses' => $addresses,
            'shippings' => $shippings,
            'couponOffer' => $couponOffer,
            'stripePaymentInfo' => $stripePaymentInfo,
            'razorpayPaymentInfo' => $razorpayPaymentInfo,
            'flutterwavePaymentInfo' => $flutterwavePaymentInfo,
            'paypalPaymentInfo' => $paypalPaymentInfo,
            'bankPaymentInfo' => $bankPaymentInfo,
            'shippingCost'   => $shipping_cost
        ],200);

    }
    private function _getClientInfo()
    {
        // return [
        //     'AccountNumber'         => '4004636',
        //     'UserName'              => 'reem@reem.com',
        //     'Password'              => '123456789',
        //     'AccountPin'            => '432432',
        //     'AccountEntity'         => 'RUH',
        //     'AccountCountryCode'    => 'SA',
        //     'Version'               => 'v1',
        //     'Source'             => null
        // ];
        return [
            'AccountNumber'         => '60520280',
            'UserName'              => 'zahraa.muzahem@icloud.com',
            'Password'              => 'Zahraa@20',
            'AccountPin'            => '321321',
            'AccountEntity'         => 'DOH',
            'AccountCountryCode'    => 'QA',
            'Version'               => 'v1',
            'Source'             => null
        ];
    }
    public function shipment_rate(Request $request)
    {
        // $params = array(
        //     'ClientInfo'            => $this->_getClientInfo(),
                                    
        //     'Transaction'           => array(
        //                                 'Reference1'            => '001' 
        //                             ),
                                    
        //     'OriginAddress'         => array(
        //                                 'City'                  => 'Amman',
        //                                 'CountryCode'               => 'JO'
        //                             ),
                                    
        //     'DestinationAddress'    => array(
        //                                 'City'                  => 'England',
        //                                 'CountryCode'           => 'UK'
        //                             ),
        //     'ShipmentDetails'       => array(
        //                                 'PaymentType'            => 'P',
        //                                 'ProductGroup'           => 'EXP',
        //                                 'ProductType'            => 'PPX',
        //                                 'ActualWeight'           => array('Value' => 50, 'Unit' => 'KG'),
        //                                 'ChargeableWeight'       => array('Value' => 50, 'Unit' => 'KG'),
        //                                 'NumberOfPieces'         => 10
        //                             )
        // );
        
        // $soapClient = new \SoapClient(storage_path('aramex/aramex-rates-calculator-wsdl.wsdl'), array('trace' => 1));
        // $results = $soapClient->CalculateRate($params); 
        // return $results;
        $soapClient = new \SoapClient(storage_path('aramex/Location-APIWSDL.wsdl'));
        
    
        $params = array(
            'ClientInfo'            => $this->_getClientInfo(),

            'Transaction'           => array(
                                        'Reference1'            => '001',
                                        'Reference2'            => '002',
                                        'Reference3'            => '003',
                                        'Reference4'            => '004',
                                        'Reference5'            => '005'
                                 
                                    ),
            
            );
        
        // calling the method and printing results
        try {
            $auth_call = $soapClient->FetchCities('AE');

            echo '<pre>';
            return $auth_call;
            die();

        } catch (SoapFault $fault) {
            die('Error : ' . $fault->faultstring);
        }

    }
}
