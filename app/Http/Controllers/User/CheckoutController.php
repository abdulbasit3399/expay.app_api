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

        if($cartProducts->count() == 0){
            $notification = trans('Your shopping cart is empty');
            return response()->json(['message' => $notification],403);
        }

        $addresses = Address::with('country','countryState','city')->where(['user_id' => $user->id])->get();
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
        ],200);

    }
    private function _getClientInfo()
    {
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
        
        $params = array(
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
                                    'Reference1'            => '001' 
                                ),
                                
        'OriginAddress'         => array(
                                    'City'                  => 'Amman',
                                    'CountryCode'               => 'JO'
                                ),
                                
        'DestinationAddress'    => array(
                                    'City'                  => 'Dubai',
                                    'CountryCode'           => 'AE'
                                ),
        'ShipmentDetails'       => array(
                                    'PaymentType'            => 'P',
                                    'ProductGroup'           => 'EXP',
                                    'ProductType'            => 'PPX',
                                    'ActualWeight'           => array('Value' => 50, 'Unit' => 'KG'),
                                    'ChargeableWeight'       => array('Value' => 50, 'Unit' => 'KG'),
                                    'NumberOfPieces'         => 10
                                )
    );
    
    $soapClient = new \SoapClient(storage_path('aramex/aramex-rates-calculator-wsdl.wsdl'), array('trace' => 1));
    $results = $soapClient->CalculateRate($params); 
    dd($results);
        $originAddress = [
            'line1' => 'Test string',
            'City' => 'Amman',
            'CountryCode' => 'JO'
        ];

        $destinationAddress = [
            'line1' => 'Test String',
            'City' => 'Dubai',
            'CountryCode' => 'AE'
        ];

        $shipmentDetails = [
            'weight' => 5, // KG
            'NumberOfPieces' => 2,
            'PaymentType' => 'P', // if u don't pass it, it will take the config default value 
            'ProductGroup' => 'EXP', // if u don't pass it, it will take the config default value
            'ProductType' => 'PPX', // if u don't pass it, it will take the config default value
            'height' => 5.5, // CM
            'width' => 3,  // CM
            'length' => 2.3  // CM
        ];


        $currency = 'USD';

        $destinationAddress = [
            "Line1"       => "Test string",
            "Line2"       => "",
            "Line3"       => "",
            "City"        => "Amman",
            "PostCode"    => "3800",
            "CountryCode" => "JO",
        ];
        $weight = 0.0;
        $count_items = 0;


        $params = [
            'ClientInfo'         => $this->_getClientInfo(),
            'Transaction'        => [
                'Reference1' => '001'
            ],
            'OriginAddress'      => $originAddress,
            'DestinationAddress' => $destinationAddress,
            'ShipmentDetails'    => $shipmentDetails
        ];

        try {
            $soapClient = new \SoapClient(storage_path('aramex/aramex-rates-calculator-wsdl.wsdl'));

            return $soapClient->CalculateRate($params);

        } catch (SoapFault $fault) {
            die('Error : '.$fault->faultstring);
        }
        dd($soapClient);
        $originAddress = [
            'line1' => 'Test string',
            'city' => 'Amman',
            'country_code' => 'JO'
        ];

        $destinationAddress = [
            'line1' => 'Test String',
            'city' => 'Dubai',
            'country_code' => 'AE'
        ];

        $shipmentDetails = [
            'weight' => 5, // KG
            'number_of_pieces' => 2,
            'payment_type' => 'P', // if u don't pass it, it will take the config default value 
            'product_group' => 'EXP', // if u don't pass it, it will take the config default value
            'product_type' => 'PPX', // if u don't pass it, it will take the config default value
            'height' => 5.5, // CM
            'width' => 3,  // CM
            'length' => 2.3  // CM
        ];

        $shipmentDetails = [
            'weight' => 5, // KG
            'number_of_pieces' => 2, 
        ];

        $currency = 'USD';
        $data = Aramex::calculateRate($originAddress, $destinationAddress , $shipmentDetails , 'USD');
        dd($data);
        if(!$data->error){
          dd($data);
        }
        else{
          // handle $data->errors
        }
    }
}
