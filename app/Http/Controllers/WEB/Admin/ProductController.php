<?php

namespace App\Http\Controllers\WEB\Admin;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\ChildCategory;
use App\Models\ProductGallery;
use App\Models\Brand;
use App\Models\ProductSpecificationKey;
use App\Models\ProductSpecification;
use App\Models\OrderProduct;
use App\Models\ProductVariant;
use App\Models\ProductVariantItem;
use App\Models\OrderProductVariant;
use App\Models\ProductReport;
use App\Models\ProductReview;
use App\Models\Wishlist;
use App\Models\Setting;
use App\Models\FlashSaleProduct;
use App\Models\ShoppingCart;
use App\Models\ShoppingCartVariant;
use App\Models\CompareProduct;
use Image;
use File;
use Str;
use Stichoza\GoogleTranslate\GoogleTranslate;
use App\Imports\ProductImport;
use Maatwebsite\Excel\Facades\Excel;

class ProductController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth:admin');
  }

  public function index()
  {
    $products = Product::with('category','seller','brand')->where(['vendor_id' => 0])->orderBy('id','desc')->get();
    $orderProducts = OrderProduct::all();
    $setting = Setting::first();
    return view('admin.product',compact('products','orderProducts','setting'));
  }

  public function sellerProduct(){
    $products = Product::with('category','seller','brand')->where('vendor_id','!=',0)->where('status',1)->get();
    $orderProducts = OrderProduct::all();
    $setting = Setting::first();

    return view('admin.product',compact('products','orderProducts','setting'));
  }

  public function sellerPendingProduct(){
    $products = Product::with('category','seller','brand')->where('vendor_id','!=',0)->where('approve_by_admin',0)->get();
    $orderProducts = OrderProduct::all();
    $setting = Setting::first();

    return view('admin.pending_product',compact('products','orderProducts','setting'));

  }

  public function stockoutProduct(){
    $products = Product::with('category','seller','brand')->where('vendor_id',0)->where('qty',0)->get();
    $orderProducts = OrderProduct::all();
    $setting = Setting::first();

    return view('admin.stockout_product',compact('products','orderProducts','setting'));

  }



  public function create()
  {
    $categories = Category::all();
    $brands = Brand::all();
    $specificationKeys = ProductSpecificationKey::all();


    return view('admin.create_product',compact('categories','brands','specificationKeys'));
  }

  public function store(Request $request)
  {

    $rules = [
      'short_name' => 'required',
      'name' => 'required',
      'slug' => 'required|unique:products',
      'thumb_image' => 'required',
      'category' => 'required',
      'short_description' => 'required',
      'long_description' => 'required',
      'price' => 'required|numeric',
      'status' => 'required',
      'weight' => 'required|numeric',
      'quantity' => 'required|numeric',
    ];
    $customMessages = [
      'short_name.required' => trans('admin_validation.Short name is required'),
      'short_name.unique' => trans('admin_validation.Short name is required'),
      'name.required' => trans('admin_validation.Name is required'),
      'name.unique' => trans('admin_validation.Name is required'),
      'slug.required' => trans('admin_validation.Slug is required'),
      'slug.unique' => trans('admin_validation.Slug already exist'),
      'category.required' => trans('admin_validation.Category is required'),
      'thumb_image.required' => trans('admin_validation.thumbnail is required'),
      'short_description.required' => trans('admin_validation.Short description is required'),
      'long_description.required' => trans('admin_validation.Long description is required'),
      'price.required' => trans('admin_validation.Price is required'),
      'status.required' => trans('admin_validation.Status is required'),
      'quantity.required' => trans('admin_validation.Quantity is required'),
      'weight.required' => trans('Weight is required'),
    ];
    $this->validate($request, $rules,$customMessages);

    $tr = new GoogleTranslate('ar');

    $product = new Product();
    if($request->thumb_image){
      $extention = $request->thumb_image->getClientOriginalExtension();
      $image_name = Str::slug($request->name).date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
      $image_name = 'uploads/custom-images/'.$image_name;
      Image::make($request->thumb_image)
      ->save(public_path().'/'.$image_name);
      $product->thumb_image=$image_name;
    }

    $product->name_ar = $tr->translate($request->name);
    $product->short_name_ar = $tr->translate($request->short_name);
    $product->short_description_ar = $tr->translate(strip_tags($request->short_description));
    $product->long_description_ar = $tr->translate(strip_tags($request->long_description));

    $product->short_name = $request->short_name;
    $product->name = $request->name;
    $product->slug = $request->slug;
    $product->category_id = $request->category;
    $product->sub_category_id = $request->sub_category ? $request->sub_category : 0;
    $product->child_category_id = $request->child_category ? $request->child_category : 0;
    $product->brand_id = $request->brand ? $request->brand : 0;
    $product->sku = $request->sku;
    $product->price = $request->price;
    $product->offer_price = $request->offer_price;
    $product->qty = $request->quantity ? $request->quantity : 0;
    $product->short_description = $request->short_description;
    $product->long_description = $request->long_description;
    $product->status = $request->status;
    $product->weight = $request->weight;
    $product->is_undefine = 1;
    $product->is_specification = $request->is_specification ? 1 : 0;
    $product->seo_title = $request->seo_title ? $request->seo_title : $request->name;
    $product->seo_description = $request->seo_description ? $request->seo_description : $request->name;
    $product->is_top = $request->top_product ? 1 : 0;
    $product->new_product = $request->new_arrival ? 1 : 0;
    $product->is_best = $request->best_product ? 1 : 0;
    $product->is_featured = $request->is_featured ? 1 : 0;
    $product->approve_by_admin = 1;
    $product->save();


    if($request->is_specification){
      $exist_specifications=[];
      if($request->keys){
        foreach($request->keys as $index => $key){
          if($key){
            if($request->specifications[$index]){
                            // if(!in_array($key, $exist_specifications)){
              $productSpecification= new ProductSpecification();
              $productSpecification->product_id = $product->id;
              $productSpecification->product_specification_key_id = $key;
              $productSpecification->specification = $request->specifications[$index];
              $productSpecification->specification_ar = $tr->translate($request->specifications[$index]);
              $productSpecification->save();
                            // }
                            // $exist_specifications[] = $key;
            }
          }
        }
      }
    }
    $notification = trans('admin_validation.Created Successfully');
    $notification=array('messege'=>$notification,'alert-type'=>'success');
    return redirect()->route('admin.product.index')->with($notification);
  }

  public function show($id)
  {
    $product = Product::with('category','brand','gallery','specifications','reviews','variants','variantItems')->find($id);
    if($product->vendor_id == 0){
      $notification = 'Something went wrong';
      return response()->json(['error'=>$notification],403);
    }

    return response()->json(['product' => $product], 200);
  }


  public function edit($id)
  {
    $product = Product::with('category','brand','gallery','variants','variantItems')->find($id);
    $categories = Category::all();
    $subCategories = SubCategory::where('category_id',$product->category_id)->get();
    $childCategories = ChildCategory::where('sub_category_id', $product->sub_category_id)->get();
    $brands = Brand::all();
    $specificationKeys = ProductSpecificationKey::all();
    $productSpecifications = ProductSpecification::where('product_id',$product->id)->get();

    return view('admin.edit_product',compact('categories','brands','specificationKeys','product','subCategories','childCategories','productSpecifications'));

  }


  public function update(Request $request, $id)
  {

    $product = Product::find($id);
    $rules = [
      'short_name' => 'required',
      'name' => 'required',
      'slug' => 'required|unique:products,slug,'.$product->id,
      'category' => 'required',
      'short_description' => 'required',
      'long_description' => 'required',
      'price' => 'required|numeric',
      'status' => 'required',
      'weight' => 'required',
      'quantity' => 'required|numeric',
    ];
    $customMessages = [
      'short_name.required' => trans('admin_validation.Short name is required'),
      'short_name.unique' => trans('admin_validation.Short name is required'),
      'name.required' => trans('admin_validation.Name is required'),
      'name.unique' => trans('admin_validation.Name is required'),
      'slug.required' => trans('admin_validation.Slug is required'),
      'slug.unique' => trans('admin_validation.Slug already exist'),
      'category.required' => trans('admin_validation.Category is required'),
      'thumb_image.required' => trans('admin_validation.thumbnail is required'),
      'banner_image.required' => trans('admin_validation.Banner is required'),
      'short_description.required' => trans('admin_validation.Short description is required'),
      'long_description.required' => trans('admin_validation.Long description is required'),
      'brand.required' => trans('admin_validation.Brand is required'),
      'price.required' => trans('admin_validation.Price is required'),
      'quantity.required' => trans('admin_validation.Quantity is required'),
      'status.required' => trans('admin_validation.Status is required'),
      'weight.required' => trans('Weight is required'),
    ];
    $this->validate($request, $rules,$customMessages);

    if($request->thumb_image){
      $old_thumbnail = $product->thumb_image;
      $extention = $request->thumb_image->getClientOriginalExtension();
      $image_name = Str::slug($request->name).date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
      $image_name = 'uploads/custom-images/'.$image_name;
      Image::make($request->thumb_image)
      ->save(public_path().'/'.$image_name);
      $product->thumb_image=$image_name;
      $product->save();
      if($old_thumbnail){
        if(File::exists(public_path().'/'.$old_thumbnail))unlink(public_path().'/'.$old_thumbnail);
      }
    }


    $product->name_ar = $request->name_ar;
    $product->short_name_ar = $request->short_name_ar;
    $product->short_description_ar = $request->short_description_ar;
    $product->long_description_ar = $request->long_description_ar;

    $product->short_name = $request->short_name;
    $product->name = $request->name;
    $product->slug = $request->slug;
    $product->category_id = $request->category;
    $product->sub_category_id = $request->sub_category ? $request->sub_category : 0;
    $product->child_category_id = $request->child_category ? $request->child_category : 0;
    $product->brand_id = $request->brand ? $request->brand : 0;
    $product->qty = $request->quantity ? $request->quantity : 0;
    $product->sold_qty = 0;
    $product->sku = $request->sku;
    $product->price = $request->price;
    $product->offer_price = $request->offer_price;
    $product->short_description = $request->short_description;
    $product->long_description = $request->long_description;
    $product->tags = $request->tags;
    $product->status = $request->status;
    $product->weight = $request->weight;
    $product->is_specification = $request->is_specification ? 1 : 0;
    $product->seo_title = $request->seo_title ? $request->seo_title : $request->name;
    $product->seo_description = $request->seo_description ? $request->seo_description : $request->name;
    $product->is_top = $request->top_product ? 1 : 0;
    $product->new_product = $request->new_arrival ? 1 : 0;
    $product->is_best = $request->best_product ? 1 : 0;
    $product->is_featured = $request->is_featured ? 1 : 0;
    if($product->vendor_id != 0){
      $product->approve_by_admin = $request->approve_by_admin;
    }
    $product->save();

    $existSroductSpecification = ProductSpecification::where('product_id',$product->id)->delete();
    if($request->keys){
      foreach($request->keys as $index => $key){
        if($key){
          if($request->specifications[$index]){
            $productSpecification = new ProductSpecification();
            $productSpecification->product_id = $product->id;
            $productSpecification->product_specification_key_id = $key;
            $productSpecification->specification = $request->specifications[$index];
            $productSpecification->save();


          }
        }
      }
    }
    $notification = trans('admin_validation.Update Successfully');
    $notification=array('messege'=>$notification,'alert-type'=>'success');
    return redirect()->route('admin.product.index')->with($notification);
  }

  public function destroy($id)
  {
    $product = Product::find($id);
    $gallery = $product->gallery;
    $old_thumbnail = $product->thumb_image;
    $product->delete();
    if($old_thumbnail){
      if(File::exists(public_path().'/'.$old_thumbnail))unlink(public_path().'/'.$old_thumbnail);
    }
    foreach($gallery as $image){
      $old_image = $image->image;
      $image->delete();
      if($old_image){
        if(File::exists(public_path().'/'.$old_image))unlink(public_path().'/'.$old_image);
      }
    }
    ProductVariant::where('product_id',$id)->delete();
    ProductVariantItem::where('product_id',$id)->delete();
    FlashSaleProduct::where('product_id',$id)->delete();
    ProductReport::where('product_id',$id)->delete();
    ProductReview::where('product_id',$id)->delete();
    ProductSpecification::where('product_id',$id)->delete();
    Wishlist::where('product_id',$id)->delete();
    $cartProducts = ShoppingCart::where('product_id',$id)->get();
    foreach($cartProducts as $cartProduct){
      ShoppingCartVariant::where('shopping_cart_id', $cartProduct->id)->delete();
      $cartProduct->delete();
    }
    CompareProduct::where('product_id',$id)->delete();

    $notification = trans('admin_validation.Delete Successfully');
    $notification=array('messege'=>$notification,'alert-type'=>'success');
    return redirect()->route('admin.product.index')->with($notification);
  }

  public function changeStatus($id){
    $product = Product::find($id);
    if($product->status == 1){
      $product->status = 0;
      $product->save();
      $message = trans('admin_validation.InActive Successfully');
    }else{
      $product->status = 1;
      $product->save();
      $message = trans('admin_validation.Active Successfully');
    }
    return response()->json($message);
  }

  public function productApproved($id){
    $product = Product::find($id);
    if($product->approve_by_admin == 1){
      $product->approve_by_admin = 0;
      $product->save();
      $message = trans('Reject Successfully');
    }else{
      $product->approve_by_admin = 1;
      $product->save();
      $message = trans('Approved Successfully');
    }
    return response()->json($message);
  }



  public function removedProductExistSpecification($id){
    $productSpecification = ProductSpecification::find($id);
    $productSpecification->delete();
    $message = trans('admin_validation.Removed Successfully');
    return response()->json($message);
  }

  public function import(Request $request)
  {
    $array = Excel::toArray(new ProductImport, $request->file, null, \Maatwebsite\Excel\Excel::CSV);
    $product = array();
    $ex_prod = $cur_prod = '';
    $tr = new GoogleTranslate('ar');
    for($i=1; $i < count($array[0]); $i++) { 
      $cur_prod = $array[0][$i][1];
      if($ex_prod != $cur_prod && $array[0][$i][1] != null)
      {
        $product = new Product;
        $product->name_ar = '';
        $product->short_name_ar = '';
        $product->short_description_ar = '';
        $product->long_description_ar = '';

        $product->short_name = $array[0][$i][2]; 
        $product->name = $array[0][$i][1];
        $product->slug = $array[0][$i][5];
        $product->thumb_image = $request->base_url.$array[0][$i][6] ?? '';
        $product->category_id = $array[0][$i][8] ?? 0;
        $product->sub_category_id = $array[0][$i][9] ?? 0;
        $product->child_category_id = $array[0][$i][10] ?? 0;
        $product->brand_id = $array[0][$i][11] ?? 0;
        $product->sku = $array[0][$i][20] ?? '';
        $product->price = $array[0][$i][23] ?? 0;
        $product->offer_price = $array[0][$i][24];
        $product->qty = $array[0][$i][12] ?? 1;
        $product->short_description = $array[0][$i][1] ?? '';
        $product->long_description = $array[0][$i][16] ?? '';
        $product->status = $array[0][$i][32] ?? 1;
        $product->weight = $array[0][$i][13] ?? 1;
        $product->is_undefine = $array[0][$i][27] ?? 1;
        $product->is_specification = $array[0][$i][33] ?? 0;
        $product->seo_title = $array[0][$i][18] ?? '';
        $product->seo_description = $array[0][$i][19] ?? '';
        $product->is_top = $array[0][$i][30] ?? 0;
        $product->new_product = $array[0][$i][29] ?? 0;
        $product->is_best = $array[0][$i][31] ?? 0;
        $product->is_featured = $array[0][$i][28] ?? 0;
        $product->approve_by_admin = 1;
        $product->save();

        if(!str_contains($array[0][$i][36], 'ar_type')){
          $variant_arr = explode(',',$array[0][$i][36]);
          foreach ($variant_arr as $key => $variant_string) {
            if(preg_match($request->variants, $variant_string) === 1)
            {
              $var_name = explode('=',$variant_string);
              $varient = new ProductVariant;
              $varient->product_id = $product->id;
              $varient->name = $var_name[0];
              $varient->status = 1;
              $varient->save();

              $var_item = new ProductVariantItem;
              $var_item->product_variant_id = $varient->id;
              $var_item->product_variant_name = $var_name[0];
              $var_item->product_id = $product->id;
              $var_item->name = $var_name[1];
              $var_item->price = 0;
              // $var_item->price = $array[0][$i][23] ?? 0;
              $var_item->status = 1;
              $var_item->is_default = 0;
              $var_item->save();

              // $product->price = 0;
              // $product->save();
            }
          }
        }
        $ex_prod = $cur_prod;
      }
      else{
        if(!str_contains($array[0][$i][36], 'ar_type')){
          $variant_arr = explode(',',$array[0][$i][36]);
          foreach ($variant_arr as $key => $variant_string) {
            if(preg_match($request->variants, $variant_string) === 1)
            {
              $var_name = explode('=',$variant_string);

              $prev_varient = ProductVariant::where([['product_id',$product->id],['name',$var_name[0]]])->first();
              if(!$prev_varient)
              {
                $varient = new ProductVariant;
                $varient->product_id = $product->id;
                $varient->name = $var_name[0];
                $varient->status = 1;
                $varient->save();
              }                     

              $var_item = new ProductVariantItem;
              $var_item->product_variant_id = $varient->id;
              $var_item->product_variant_name = $var_name[0];
              $var_item->product_id = $product->id;
              $var_item->name = $var_name[1];
              $var_item->price = 0;
              // $var_item->price = $array[0][$i][23] ?? 0;
              $var_item->status = 1;
              $var_item->is_default = 0;
              $var_item->save();
            }
          }
        }
        if($array[0][$i][6] != null){
          $product_gallery = new ProductGallery;
          $product_gallery->product_id = $product->id;
          $product_gallery->image = $request->base_url.$array[0][$i][6];
          $product_gallery->status = 1;
          $product_gallery->save();
        }
        
      }

            // $variant_arr = explode(',',$array[0][$i][3]);
            // foreach ($variant_arr as $key => $variant_string) {
            //     if(preg_match($request->variants, $variant_string) === 1)
            //     {
            //         // $product['product'][] =
            //     }
            // }
            // dump($variant_arr);
    }
    $notification=array('messege'=>'Import Successfully.','alert-type'=>'success');
    return redirect()->route('admin.product.index')->with($notification);


  }



}
