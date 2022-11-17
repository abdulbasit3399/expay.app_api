<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Brand;
use App\Models\Category;
use App\Models\EmailTemplate;
use App\Models\PopularCategory;
use App\Models\FeaturedCategory;
use App\Models\CategoryBrands;
use App\Models\MegaMenuSubCategory;
use Stichoza\GoogleTranslate\GoogleTranslate;
use App\Models\MegaMenuCategory;
use Illuminate\Http\Request;
use  Image;
use File;
use Str;
class ProductCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $categories = Category::with('subCategories','products')->get();


        return view('admin.product_category',compact('categories'));

    }


    public function create()
    {
        return view('admin.create_product_category');
    }


    public function store(Request $request)
    {
        $tr = new GoogleTranslate('ar');

        $rules = [
            'name'=>'required|unique:categories',
            'slug'=>'required|unique:categories',
            'status'=>'required',
            'icon'=>'required',
        ];
        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'icon.required' => trans('admin_validation.Icon is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $category = new Category();

        if($request->category_image){
            $extention = $request->category_image->getClientOriginalExtension();
            $category_image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $category_image = 'uploads/custom-images/'.$category_image;
            Image::make($request->category_image)
                ->save(public_path().'/'.$category_image);
            $category->image = $category_image;
        }

        $category->name_ar = $tr->translate($request->name);
        $category->name = $request->name;
        $category->slug = $request->slug;
        $category->status = $request->status;
        $category->icon = $request->icon;
        $category->save();

        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.product-category.index')->with($notification);
    }


    public function show($id){
        $category = Category::find($id);
        return response()->json(['category' => $category],200);
    }

    public function edit($id)
    {
        $category = Category::find($id);
        $category_brands = CategoryBrands::where('category_id',$id)->orderBy('serial','ASC')->get();
        $brands = Brand::all();

        $name = '';
        if(count($category_brands) > 0){
            foreach ($category_brands as $key => $brand) {
                $current_brand = Brand::find($brand->brand_id);
                $name .= $current_brand->name.'->';
            }
            
            $name = rtrim($name, "->");
        }

        $category_brands = json_decode(json_encode($category_brands),true);
        return view('admin.edit_product_category',compact('category','brands','category_brands','name'));
    }


    public function update(Request $request,$id)
    {
        $category = Category::find($id);
        $rules = [
            'name'=>'required|unique:categories,name,'.$category->id,
            'slug'=>'required|unique:categories,name,'.$category->id,
            'status'=>'required',
            'icon'=>'required'
        ];

        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'icon.required' => trans('admin_validation.Icon is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        if($request->category_image){
            $existing_slider = $category->image;
            $extention = $request->category_image->getClientOriginalExtension();
            $category_image = 'slider'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $category_image = 'uploads/custom-images/'.$category_image;
            Image::make($request->category_image)
                ->save(public_path().'/'.$category_image);
            $category->image = $category_image;
            $category->save();
            if($existing_slider){
                if(File::exists(public_path().'/'.$existing_slider))unlink(public_path().'/'.$existing_slider);
            }
        }
        
        $category->icon = $request->icon;
        $category->name_ar = $request->name_ar;
        $category->name = $request->name;
        $category->slug = $request->slug;
        $category->status = $request->status;
        $category->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.product-category.index')->with($notification);
    }

    public function destroy($id)
    {
        $category = Category::find($id);
        $category->delete();
        $megaMenuCategory = MegaMenuCategory::where('category_id',$id)->first();
        if($megaMenuCategory){
            $cat_id = $megaMenuCategory->id;
            $megaMenuCategory->delete();
            MegaMenuSubCategory::where('mega_menu_category_id',$cat_id)->delete();
        }

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.product-category.index')->with($notification);
    }

    public function changeStatus($id){
        $category = Category::find($id);
        if($category->status==1){
            $category->status=0;
            $category->save();
            $message = trans('admin_validation.Inactive Successfully');
        }else{
            $category->status=1;
            $category->save();
            $message= trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
    public function product_category_brands(Request $request)
    {
        if(isset($request->brands))
        {
            $category_brands = CategoryBrands::where('category_id',$request->category_id)->delete();
            foreach ($request->brands as $key => $brand) {
                $new = new CategoryBrands;
                $new->category_id = $request->category_id;
                $new->brand_id = $brand;
                $new->serial = $key;
                $new->save();
            }
        }
        
        
        $notification = array('messege'=>'Brands added successfully.','alert-type'=>'success');
        return redirect()->route('admin.product-category.index')->with($notification);
    }
}
