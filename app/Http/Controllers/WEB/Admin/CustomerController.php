<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\BannerImage;
use App\Models\Order;
use App\Models\ProductReport;
use App\Models\ProductReview;
use App\Models\ShippingAddress;
use App\Models\BillingAddress;
use App\Models\Wishlist;
use App\Helpers\MailHelper;
use Mail;
use App\Mail\SendSingleSellerMail;
use Image;
use File;
use DataTables;
    
class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(Request $request){
        $customers = User::with('city','seller','state', 'country')->orderBy('id','desc')->where('status',1)->get();
        $defaultProfile = BannerImage::whereId('15')->first();
        $orders = Order::all();

        if ($request->ajax()) { 
            $data = User::with('city','seller','state', 'country')->orderBy('id','asc')->where('status',1)->latest();

            return Datatables::of($data)
            ->addIndexColumn()
            ->addColumn('action', function($data){

                $action_btn = '';


                $action_btn = $action_btn.'<a href="javascript:;"data-toggle="modal" data-target="#sendEmailModal-{{ $customer->id }}" class="btn btn-success btn-sm"><i class="fa fa-envelope" aria-hidden="true"></i></a>';

                $action_btn = $action_btn.'<a href="'. route("admin.customer-show",$data->id) .'" class="btn btn-primary btn-sm"><i class="fa fa-eye" aria-hidden="true"></i></a>';
                
                $existOrder = Order::where('user_id',$data->id)->count();
                    
                if ($existOrder == 0){
                    $action_btn = $action_btn.'<a href="javascript:;" data-toggle="modal" data-target="#deleteModal" onclick="deleteData('.$data->id.')" class="btn btn-danger btn-sm"><i class="fa fa-trash" aria-hidden="true"></i></a>';
                }else{
                    $action_btn = $action_btn.'<a href="javascript:;" data-toggle="modal" data-target="#canNotDeleteModal" class="btn btn-danger btn-sm"><i class="fa fa-trash" aria-hidden="true"></i></a>';
                }
                return $action_btn;
            })        

            ->rawColumns(['action'])
            ->make(true);
          }
        return view('admin.customer', compact('customers','defaultProfile','orders'));
    }

    public function pendingCustomerList(){
        $customers = User::with('city','seller','state', 'country')->orderBy('id','desc')->where('status',0)->get();
        $defaultProfile = BannerImage::whereId('15')->first();
        $orders = Order::all();

        return view('admin.customer', compact('customers','defaultProfile','orders'));

    }

    public function show($id){
        $customer = User::with('city','seller','state', 'country')->find($id);
        if($customer){
            $defaultProfile = BannerImage::whereId('15')->first();

            return view('admin.show_customer',compact('customer','defaultProfile'));

        }else{
            $notification= trans('admin_validation.Something Went Wrong');
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->route('admin.customer-list')->with($notification);
        }

    }

    public function destroy($id)
    {
        $user = User::find($id);
        $user_image = $user->image;
        $user->delete();
        if($user_image){
            if(File::exists(public_path().'/'.$user_image))unlink(public_path().'/'.$user_image);
        }
        ProductReport::where('user_id',$id)->delete();
        ProductReview::where('user_id',$id)->delete();
        ShippingAddress::where('user_id',$id)->delete();
        BillingAddress::where('user_id',$id)->delete();
        Wishlist::where('user_id',$id)->delete();

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);

    }

    public function changeStatus($id){
        $customer = User::find($id);
        if($customer->status == 1){
            $customer->status = 0;
            $customer->save();
            $message = trans('admin_validation.Inactive Successfully');
        }else{
            $customer->status = 1;
            $customer->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }

    public function sendEmailToAllUser(){
        return view('admin.send_email_to_all_customer');
    }

    public function sendMailToAllUser(Request $request){
        $rules = [
            'subject'=>'required',
            'message'=>'required'
        ];
        $customMessages = [
            'subject.required' => trans('admin_validation.Subject is required'),
            'message.required' => trans('admin_validation.Message is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $users = User::where('status',1)->get();
        MailHelper::setMailConfig();
        foreach($users as $user){
            Mail::to($user->email)->send(new SendSingleSellerMail($request->subject,$request->message));
        }

        $notification = trans('admin_validation.Email Send Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);
    }

    public function sendMailToSingleUser(Request $request, $id){
        $rules = [
            'subject'=>'required',
            'message'=>'required'
        ];
        $customMessages = [
            'subject.required' => trans('admin_validation.Subject is required'),
            'message.required' => trans('admin_validation.Message is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $user = User::find($id);
        MailHelper::setMailConfig();
        Mail::to($user->email)->send(new SendSingleSellerMail($request->subject,$request->message));

        $notification = trans('admin_validation.Email Send Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);
    }

}
