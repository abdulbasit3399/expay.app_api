<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider10;
use App\Models\Brand;
use Image;
use File;
use Stichoza\GoogleTranslate\GoogleTranslate;
class Slider10Controller extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $sliders = Slider10::all();
        return view('admin.slider10.slider', compact('sliders'));
    }

    public function create(){
        $products = Brand::where(['status' => 1])->select('id','name','slug')->get();
        return view('admin.slider10.create_slider', compact('products'));
    }

    public function store(Request $request){
        $tr = new GoogleTranslate('ar');
        $rules = [
            'slider_image' => 'required',
            'product_slug' => 'required',
            'status' => 'required',
            'serial' => 'required',
            // 'title_one' => 'required',
            // 'title_two' => 'required',
            // 'badge' => 'required',
        ];
        $customMessages = [
            'slider_image.required' => trans('admin_validation.Slider image is required'),
            'title.required' => trans('admin_validation.Title is required'),
            'description.required' => trans('admin_validation.Description is required'),
            'product_slug.required' => trans('Link is required'),
            'status.required' => trans('admin_validation.Status is required'),
            'serial.required' => trans('admin_validation.Serial is required'),
            'label.required' => trans('admin_validation.Label is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $slider = new Slider10();
        if($request->slider_image){
            $extention = $request->slider_image->getClientOriginalExtension();
            $slider_image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $slider_image = 'uploads/custom-images/'.$slider_image;
            Image::make($request->slider_image)
                ->save(public_path().'/'.$slider_image);
            $slider->image = $slider_image;
        }
        if($request->slider_image_ar){
            $extention = $request->slider_image_ar->getClientOriginalExtension();
            $slider_image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $slider_image = 'uploads/custom-images/'.$slider_image;
            Image::make($request->slider_image_ar)
                ->save(public_path().'/'.$slider_image);
            $slider->image_ar = $slider_image;
        }


        $slider->badge_ar = $request->badge ? $tr->translate($request->badge):'';
        $slider->title_one_ar = $request->title_one ? $tr->translate($request->title_one) : '';
        $slider->title_two_ar = $request->title_two ? $tr->translate($request->title_two) : '';

        $slider->product_slug = $request->product_slug;
        $slider->serial = $request->serial;
        $slider->status = $request->status;
        $slider->title_one = $request->title_one;
        $slider->title_two = $request->title_two;
        $slider->badge = $request->badge;
        $slider->save();

        $notification= trans('admin_validation.Created Successfully');
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);
    }

    public function show($id){
        $slider = Slider10::find($id);
        return response()->json(['slider' => $slider], 200);
    }

    public function edit($id){
        $slider = Slider10::find($id);
        $products = Brand::where(['status' => 1])->select('id','name','slug')->get();
        return view('admin.slider10.edit_slider', compact('slider','products'));
    }

    public function update(Request $request, $id){
        $rules = [
            'product_slug' => 'required',
            'status' => 'required',
            'serial' => 'required',
            // 'title_one' => 'required',
            // 'title_two' => 'required',
            // 'badge' => 'required',

        ];
        $customMessages = [
            'product_slug.required' => trans('Link is required'),
            'status.required' => trans('admin_validation.Status is required'),
            'serial.required' => trans('admin_validation.Serial is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $slider = Slider10::find($id);
        if($request->slider_image){
            $existing_slider = $slider->image;
            $extention = $request->slider_image->getClientOriginalExtension();
            $slider_image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $slider_image = 'uploads/custom-images/'.$slider_image;
            Image::make($request->slider_image)
                ->save(public_path().'/'.$slider_image);
            $slider->image = $slider_image;
            $slider->save();
            if($existing_slider){
                if(File::exists(public_path().'/'.$existing_slider))unlink(public_path().'/'.$existing_slider);
            }
        }
        if($request->slider_image_ar){
            $existing_slider = $slider->image_ar;
            $extention = $request->slider_image_ar->getClientOriginalExtension();
            $slider_image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $slider_image = 'uploads/custom-images/'.$slider_image;
            Image::make($request->slider_image_ar)
                ->save(public_path().'/'.$slider_image);
            $slider->image_ar = $slider_image;
            $slider->save();
            if($existing_slider){
                if(File::exists(public_path().'/'.$existing_slider))unlink(public_path().'/'.$existing_slider);
            }
        }

        $slider->badge_ar = $request->badge_ar;
        $slider->title_one_ar = $request->title_one_ar;
        $slider->title_two_ar = $request->title_two_ar;
        $slider->product_slug = $request->product_slug;
        $slider->serial = $request->serial;
        $slider->status = $request->status;
        $slider->title_one = $request->title_one;
        $slider->title_two = $request->title_two;
        $slider->badge = $request->badge;
        $slider->save();

        $notification= trans('admin_validation.Update Successfully');
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.slider10.index')->with($notification);
    }

    public function destroy($id){
        $slider = Slider10::find($id);
        $existing_slider = $slider->image;
        $slider->delete();
        if($existing_slider){
            if(File::exists(public_path().'/'.$existing_slider))unlink(public_path().'/'.$existing_slider);
        }

        $notification= trans('admin_validation.Delete Successfully');
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);
    }


    public function changeStatus($id){
        $slider = Slider10::find($id);
        if($slider->status==1){
            $slider->status=0;
            $slider->save();
            $message= trans('admin_validation.Inactive Successfully');
        }else{
            $slider->status=1;
            $slider->save();
            $message= trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }


}

