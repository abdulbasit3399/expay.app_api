<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Footer;
use Image;
use File;
use Stichoza\GoogleTranslate\GoogleTranslate;

class FooterController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $footer = Footer::first();
        return view('admin.website_footer', compact('footer'));
    }

    public function update(Request $request, $id){
        $tr = new GoogleTranslate('ar');
        $rules = [
            'email' =>'required',
            'phone' =>'required',
            'address' =>'required',
            'copyright' =>'required',
            'first_column' =>'required',
            'second_column' =>'required',
            'third_column' =>'required',
        ];
        $customMessages = [
            'email.required' => trans('admin_validation.Email is required'),
            'phone.required' => trans('admin_validation.Phone is required'),
            'address.required' => trans('admin_validation.Address is required'),
            'copyright.required' => trans('admin_validation.Copyright is required'),
            'first_column.required' => trans('admin_validation.First column title is required'),
            'second_column.required' => trans('admin_validation.Second column title is required'),
            'third_column.required' => trans('admin_validation.Third column title is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $footer = Footer::first();
        $footer->email = $request->email;
        $footer->phone = $request->phone;
        $footer->address = $request->address;
        $footer->copyright = $request->copyright;
        $footer->first_column = $request->first_column;
        $footer->second_column = $request->second_column;
        $footer->third_column = $request->third_column;

        if(!$footer->copyright_ar)
            $footer->copyright_ar = $tr->translate($request->copyright);
        else
            $footer->copyright_ar = $request->copyright_ar;

        if(!$footer->first_column_ar)
            $footer->first_column_ar = $tr->translate($request->first_column);
        else
            $footer->first_column_ar = $request->first_column_ar;
        
        if(!$footer->second_column_ar)
            $footer->second_column_ar = $tr->translate($request->second_column);
        else
            $footer->second_column_ar = $request->second_column_ar;

        if(!$footer->third_column_ar)
            $footer->third_column_ar = $tr->translate($request->third_column);
        else
            $footer->third_column_ar = $request->third_column_ar;
        

        $footer->save();
        if($request->card_image){
            $old_logo=$footer->payment_image;
            $image=$request->card_image;
            $ext=$image->getClientOriginalExtension();
            $logo_name= 'payment-card-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$ext;
            $logo_name='uploads/website-images/'.$logo_name;
            $logo=Image::make($image)
                    ->save(public_path().'/'.$logo_name);
            $footer->payment_image=$logo_name;
            $footer->save();
            if($old_logo){
                if(File::exists(public_path().'/'.$old_logo))unlink(public_path().'/'.$old_logo);
            }
        }


        $notification = trans('admin_validation.Update Successfully');
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);

    }
}
