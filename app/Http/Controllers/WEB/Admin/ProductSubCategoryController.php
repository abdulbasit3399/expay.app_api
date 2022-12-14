<?php

namespace App\Http\Controllers\WEB\Admin;

use Image;
use File;
use App\Http\Controllers\Controller;
use Stichoza\GoogleTranslate\GoogleTranslate;
use App\Models\SubCategory;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\PopularCategory;
use App\Models\ThreeColumnCategory;
use App\Models\MegaMenuSubCategory;
use App\Imports\SubCategoryImport;
use Maatwebsite\Excel\Facades\Excel;

class ProductSubCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $subCategories=SubCategory::with('category','childCategories','products')->get();

        return view('admin.product_sub_category',compact('subCategories'));
    }


    public function create()
    {
        $categories=Category::all();
        return view('admin.create_product_sub_category',compact('categories'));
    }


    public function store(Request $request)
    {
        $tr = new GoogleTranslate('ar');
        $rules = [
            'name'=>'required',
            'slug'=>'required|unique:sub_categories',
            'category'=>'required',
            'status'=>'required'
        ];

        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'category.required' => trans('admin_validation.Category is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        

        $subCategory = new SubCategory();
        $subCategory->category_id = $request->category;
        $subCategory->name_ar = $tr->translate($request->name);
        $subCategory->name = $request->name;
        $subCategory->slug = $request->slug;
        $subCategory->status = $request->status;

        if($request->image){
            $extention = $request->image->getClientOriginalExtension();
            $image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image = 'uploads/custom-images/'.$image;
            Image::make($request->image)
                ->save(public_path().'/'.$image);
            $subCategory->image = $image;
        }

        if($request->image2){
            $extention = $request->image->getClientOriginalExtension();
            $image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image = 'uploads/custom-images/'.$image;
            Image::make($request->image2)
                ->save(public_path().'/'.$image);
            $subCategory->image_2 = $image;
        }

        $subCategory->save();

        $notification = trans('admin_validation.Created Successfully');
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.product-sub-category.index')->with($notification);
    }

    public function show($id){
        $subCategory = SubCategory::find($id);
        return response()->json(['subCategory' => $subCategory],200);
    }

    public function edit($id)
    {
        $subCategory = SubCategory::find($id);
        $categories=Category::all();
        return view('admin.edit_product_sub_category',compact('subCategory','categories'));
    }


    public function update(Request $request, $id)
    {
        $subCategory = SubCategory::find($id);
        $rules = [
            'name'=>'required',
            'slug'=>'required|unique:sub_categories,slug,'.$subCategory->id,
            'category'=>'required',
            'status'=>'required'
        ];

        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'category.required' => trans('admin_validation.Category is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $subCategory->category_id = $request->category;
        $subCategory->name = $request->name;
        $subCategory->name_ar = $request->name_ar;
        $subCategory->slug = $request->slug;
        $subCategory->status = $request->status;

        if($request->image){
            $existing_slider = $subCategory->image;
            $extention = $request->image->getClientOriginalExtension();
            $image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image = 'uploads/custom-images/'.$image;
            Image::make($request->image)
                ->save(public_path().'/'.$image);
            $subCategory->image = $image;
            $subCategory->save();
            if($existing_slider){
                if(File::exists(public_path().'/'.$existing_slider))unlink(public_path().'/'.$existing_slider);
            }
        }

        if($request->image2){
            $existing_slider = $subCategory->image_2;
            $extention = $request->image2->getClientOriginalExtension();
            $image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image = 'uploads/custom-images/'.$image;
            Image::make($request->image2)
                ->save(public_path().'/'.$image);
            $subCategory->image_2 = $image;
            $subCategory->save();
            if($existing_slider){
                if(File::exists(public_path().'/'.$existing_slider))unlink(public_path().'/'.$existing_slider);
            }
        }

        $subCategory->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.product-sub-category.index')->with($notification);
    }


    public function destroy($id)
    {
        $subCategory = SubCategory::find($id);
        $existing_slider = $subCategory->image;
        $subCategory->delete();

        if($existing_slider){
            if(File::exists(public_path().'/'.$existing_slider))unlink(public_path().'/'.$existing_slider);
        }

        MegaMenuSubCategory::where('sub_category_id',$id)->delete();

        $notification = trans('admin_validation.Delete Successfully');
        $notification=array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.product-sub-category.index')->with($notification);
    }

    public function changeStatus($id){
        $subCategory = SubCategory::find($id);
        if($subCategory->status==1){
            $subCategory->status=0;
            $subCategory->save();
            $message = trans('admin_validation.InActive Successfully');
        }else{
            $subCategory->status=1;
            $subCategory->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
    public function import(Request $request)
    {
        $main = $request->main_cat;
        $cat = Category::where('name',$request->main_cat)->first();
        if(!$cat){
            $notification = array('messege'=>'Main Category not exists','alert-type'=>'error');
            return redirect()->back()->with($notification);
        }

        $cat_arr = array();
        $array = Excel::toArray(new SubCategoryImport, $request->image);
        for ($i=0; $i < count($array[0]); $i++) { 
            if($array[0][$i][0]){

                $name_arr = (explode(",",$array[0][$i][0]));
                $name_arr[0] = str_replace("/","",$name_arr[0]);
                if(!in_array($name_arr[0], $cat_arr))
                    $cat_arr[] = $name_arr[0];

            }
        }
        dd($cat_arr);
    }
}
