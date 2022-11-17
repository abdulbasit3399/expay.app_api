<?php

namespace App\Http\Controllers\WEB\Admin;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\ChildCategory;
use App\Models\ProductGallery;
use App\Models\User;
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
use DB;
use DataTables;
use Stichoza\GoogleTranslate\GoogleTranslate;
use App\Imports\ProductImport;
use Maatwebsite\Excel\Facades\Excel;

class ProductController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth:admin',['except' => ['translate','test1']]);
  }

  public function index(Request $request)
  {
    $products = Product::with('category','seller','brand')->where([['vendor_id',0],['trendy_product',0]])->orderBy('id','desc')->get();
    $orderProducts = OrderProduct::all();
    $setting = Setting::first();
    if ($request->ajax()) {
      $data = Product::with('category','seller','brand')->where([['vendor_id',0],['trendy_product',0]])->orderBy('id')->latest();


      return Datatables::of($data)
      ->addIndexColumn()
      ->addColumn('type', function($data){

        $btn = '';

        if ($data->new_product == '1') {
          $btn.=
          '
          <span class="badge badge-primary p-1">New</span>
          ';
        }
        if ($data->is_featured == '1') {
          $btn.=
          '
          <span class="badge badge-success p-1">Featured</span>
          ';
        }
        if ($data->is_top == '1') {
          $btn.=
          '
          <span class="badge badge-warning p-1">Top</span>
          ';
        }
        if ($data->is_best == '1') {
          $btn.=
          '
          <span class="badge badge-danger p-1">Best</span>
          ';
        }
        return $btn;

      })
      ->addColumn('status', function($data){

        $status_btn = '';
        if ($data->status == '1') {
          $status_btn.=
          '
          <a href="javascript:;" onclick="changeProductStatus('.$data->id.')">
          <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="Active" data-off="In-Active" data-onstyle="success" data-offstyle="danger" />
          Active
          </a>
          ';
        }
        if ($data->status == '0') {
          $status_btn.=
          '
          <a href="javascript:;" onclick="changeProductStatus('.$data->id.')">
          <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="In-Active" data-off="Active" data-onstyle="success" data-offstyle="danger" />
          In-Active
          </a>
          ';
        }
        return $status_btn;

      })
      ->addColumn('action', function($data){

        $action_btn = '';
        $action_btn = $action_btn.'<a href="'. route("admin.product.edit",$data->id) .'" class="btn btn-primary btn-sm"><i class="fa fa-edit" aria-hidden="true"></i></a>';

        $orderProducts = OrderProduct::all();
        $existOrder = $orderProducts->where('product_id',$data->id)->count();

        if ($existOrder == '0') {

          $action_btn.=
          '
          <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData('.$data->id.')"><i class="fa fa-trash" aria-hidden="true"></i></a>
          ';
        }
        else{
          $action_btn.=
          '
          <a href="javascript:;" data-toggle="modal" data-target="#canNotDeleteModal" class="btn btn-danger btn-sm" disabled><i class="fa fa-trash" aria-hidden="true"></i></a>
          ';
        }
        $action_btn.=
        '
        <div class="dropdown d-inline">
        <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-cog"></i>
        </button>
        <div class="dropdown-menu" x-placement="top-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, -131px, 0px);">
        <a class="dropdown-item has-icon" href="'. route("admin.product-gallery",$data->id) .'"><i class="far fa-image"></i> Image Gallery</a>

        <a class="dropdown-item has-icon" href="'. route("admin.product-variant",$data->id) .'"><i class="fas fa-cog"></i> Product Variant</a>

        </div>
        </div>
        ';
        return $action_btn;
      })



      ->rawColumns(['type', 'status', 'action'])

      ->make(true);
    }

    return view('admin.product',compact('products','orderProducts','setting'));
  }
  public function trendy_products(Request $request)
  {
    $products = Product::with('category','seller','brand')->where([['vendor_id',0],['trendy_product',1]])->orderBy('id','desc')->get();
    $orderProducts = OrderProduct::all();
    $setting = Setting::first();
    if ($request->ajax()) {
      $data = Product::with('category','seller','brand')->where([['vendor_id',0],['trendy_product',1]])->orderBy('id')->latest();


      return Datatables::of($data)
      ->addIndexColumn()
      ->addColumn('type', function($data){

        $btn = '';

        if ($data->new_product == '1') {
          $btn.=
          '
          <span class="badge badge-primary p-1">New</span>
          ';
        }
        if ($data->is_featured == '1') {
          $btn.=
          '
          <span class="badge badge-success p-1">Featured</span>
          ';
        }
        if ($data->is_top == '1') {
          $btn.=
          '
          <span class="badge badge-warning p-1">Top</span>
          ';
        }
        if ($data->is_best == '1') {
          $btn.=
          '
          <span class="badge badge-danger p-1">Best</span>
          ';
        }
        return $btn;

      })
      ->addColumn('status', function($data){

        $status_btn = '';
        if ($data->status == '1') {
          $status_btn.=
          '
          <a href="javascript:;" onclick="changeProductStatus('.$data->id.')">
          <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="Active" data-off="In-Active" data-onstyle="success" data-offstyle="danger" />
          Active
          </a>
          ';
        }
        if ($data->status == '0') {
          $status_btn.=
          '
          <a href="javascript:;" onclick="changeProductStatus('.$data->id.')">
          <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="In-Active" data-off="Active" data-onstyle="success" data-offstyle="danger" />
          In-Active
          </a>
          ';
        }
        return $status_btn;

      })
      ->addColumn('action', function($data){

        $action_btn = '';
        $action_btn = $action_btn.'<a href="'. route("admin.product.edit",$data->id) .'" class="btn btn-primary btn-sm"><i class="fa fa-edit" aria-hidden="true"></i></a>';

        $orderProducts = OrderProduct::all();
        $existOrder = $orderProducts->where('product_id',$data->id)->count();

        if ($existOrder == '0') {

          $action_btn.=
          '
          <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData('.$data->id.')"><i class="fa fa-trash" aria-hidden="true"></i></a>
          ';
        }
        else{
          $action_btn.=
          '
          <a href="javascript:;" data-toggle="modal" data-target="#canNotDeleteModal" class="btn btn-danger btn-sm" disabled><i class="fa fa-trash" aria-hidden="true"></i></a>
          ';
        }
        $action_btn.=
        '
        <div class="dropdown d-inline">
        <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-cog"></i>
        </button>
        <div class="dropdown-menu" x-placement="top-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, -131px, 0px);">
        <a class="dropdown-item has-icon" href="'. route("admin.product-gallery",$data->id) .'"><i class="far fa-image"></i> Image Gallery</a>

        <a class="dropdown-item has-icon" href="'. route("admin.product-variant",$data->id) .'"><i class="fas fa-cog"></i> Product Variant</a>

        </div>
        </div>
        ';
        return $action_btn;
      })



      ->rawColumns(['type', 'status', 'action'])

      ->make(true);
    }
    return view('admin.product_trendy',compact('products','orderProducts','setting'));
  }
  public function trendy_products_backup()
  {
    $products = Product::with('category','seller','brand')->where([['vendor_id',0],['trendy_product',1]])->orderBy('id','desc')->paginate(100);
    $orderProducts = OrderProduct::all();
    $setting = Setting::first();
    return view('admin.product_trendy',compact('products','orderProducts','setting'));

  }

  public function index_backup()
  {
    $link = 'https://cdn.dsmcdn.com/mnresize/128/192/ty531/product/media/images/20220912/15/174446210/568168775/3/3_org_zoom.jpg';
    

    $products = Product::with('category','seller','brand')->where([['vendor_id' , 0],['trendy_product',0]])->orderBy('id','desc')->paginate(100);
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

    $categories_tr = Product::where('category_tr','!=',null)->groupBy('category_tr')->get('category_tr');

    // $old_pro = Product::where('trendy_product',0)->delete();
    // $var = ProductVariant::whereIn('product_id',$old_pro)->delete();
    // ProductVariantItem::whereIn('product_id',$old_pro)->delete();
    // ProductGallery::whereIn('product_id',$old_pro)->delete();
    // foreach ($old_pro as $key => $value) {
    //   Product::find($value->id)->delete();
    //   ProductVariant::where('product_id',$value->id)->delete();
    //   ProductVariantItem::where('product_id',$value->id)->delete();
    //   ProductGallery::where('product_id',$value->id)->delete();

    // }
    // $products = Product::where('short_description','LIKE','%<p>%')->get();
    // foreach($products as $pro)
    // {
    //   $pr = Product::find($pro->id);
    //   $pr->short_description = strip_tags($pr->short_description);
    //   $pr->save();
      
    // }
    return view('admin.create_product',compact('categories','brands','specificationKeys','categories_tr'));
  }

  public function create_trendy()
  {
    $categories = Category::all();
    $brands = Brand::all();
    $specificationKeys = ProductSpecificationKey::all();

    $categories_tr = Product::where('category_tr','!=',null)->groupBy('category_tr')->get('category_tr');

    return view('admin.create_trendy_product',compact('categories','brands','specificationKeys','categories_tr'));
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

  public function import2(Request $request)
  {
    // foreach ($request->file as $key => $file) {
    //   $array = Excel::toArray(new ProductImport, $request->file);
    //   dump()
    // }
    foreach ($request->file as $key => $file) {
    $array = Excel::toArray(new ProductImport, $file);

    $product = array();
    $ex_prod = $cur_prod = '';
    $tr = new GoogleTranslate('ar');

    for($i=1; $i < count($array[0]); $i++) {
      $cur_prod = $array[0][$i]['name'];
      if($array[0][$i]['slug'] && $array[0][$i]['slug'] != '' && $array[0][$i]['price'] != null && $array[0][$i]['name'] != null)
      {
        $product = Product::where([['slug',$array[0][$i]['slug']],['trendy_product',0]])->first();
      if(!$product)
      {
        
          $product = new Product;
          $product->name_ar = '';
          $product->short_name_ar = '';
          $product->short_description_ar = '';
          $product->long_description_ar = '';

          $product->short_name = $array[0][$i]['short_name'] ? $array[0][$i]['short_name'] : $array[0][$i]['name']; 
          $product->name = $array[0][$i]['name'];
          $product->slug = $array[0][$i]['slug'] ?? '';
          $product->thumb_image = $request->base_url.$array[0][$i]['thumb_image'] ?? '';
          $product->category_id = $array[0][$i]['category_id'] ?? 0;
          $product->sub_category_id = $array[0][$i]['sub_category_id'] ?? 0;
          $product->child_category_id = $array[0][$i]['child_category'] ?? 0;
          $product->brand_id = $array[0][$i]['brand_id'] ?? 0;
          $product->sku = $array[0][$i]['sku'] ?? '';
          $product->price = $array[0][$i]['price'] ?? 0;
          $product->offer_price = $array[0][$i]['offer_price'];
          $product->qty = $array[0][$i]['qty'] ?? 1;
          $product->short_description = $array[0][$i]['short_description'] ? strip_tags($array[0][$i]['short_description']) : '';
          $product->long_description = $array[0][$i]['long_description'] ?? '';
          $product->status = $array[0][$i]['status'] ?? 1;
          $product->weight = $array[0][$i]['weight'] ?? 1;
          $product->is_undefine = $array[0][$i]['is_undefine'] ?? 1;
          $product->is_specification = $array[0][$i]['is_specification'] ?? 0;
          $product->seo_title = $array[0][$i]['seo_title'] ?? '';
          $product->seo_description = $array[0][$i]['seo_description'] ?? '';
          $product->is_top = $array[0][$i]['is_top'] ?? 0;
          $product->new_product = $array[0][$i]['new_product'] ?? 0;
          $product->is_best = $array[0][$i]['is_best'] ?? 0;
          $product->is_featured = $array[0][$i]['is_featured'] ?? 0;
          $product->approve_by_admin = 1;
          $product->save();

          if(!str_contains($array[0][$i]['additional_attributes'], 'ar_type')){
            $variant_arr = explode(',',$array[0][$i]['additional_attributes']);
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
                // $var_item->price = 0;
                $var_item->price = $array[0][$i]['price'] ?? 0;
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
        if(!str_contains($array[0][$i]['additional_attributes'], 'ar_type')){
          $variant_arr = explode(',',$array[0][$i]['additional_attributes']);
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
              // $var_item->price = 0;
              $var_item->price = $array[0][$i]['price'] ?? 0;
              $var_item->status = 1;
              $var_item->is_default = 0;
              $var_item->save();
            }
          }
        }
        if($array[0][$i]['thumb_image'] != null){
          $product_gallery = new ProductGallery;
          $product_gallery->product_id = $product->id;
          $product_gallery->image = $request->base_url.$array[0][$i]['thumb_image'];
          $product_gallery->status = 1;
          $product_gallery->save();
        }
        
      }
    }

   }     // $variant_arr = explode(',',$array[0][$i][3]);
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

  public function import(Request $request)
  {
    $array = Excel::toArray(new ProductImport, $request->file);
    // $array = Excel::toArray(new ProductImport, storage_path('app/Merged_file.xlsx'));
    $product = array();
    $ex_prod = $cur_prod = '';
    $tr = new GoogleTranslate('ar');
    // $length = count($array[0][0]) - 1;
    for($i=1; $i < count($array[0]); $i++) {
      $cur_prod = $array[0][$i]['name'];
     if($ex_prod != $cur_prod && $array[0][$i]['name'] != null && $array[0][$i]['slug'] != null && $array[0][$i]['price'] != null)
      {
          $product = new Product;
          $product->name_ar = '';
          $product->short_name_ar = '';
          $product->short_description_ar = '';
          $product->long_description_ar = '';

          $product->short_name = $array[0][$i]['short_name'] ? $array[0][$i]['short_name'] : $array[0][$i]['name']; 
          $product->name = $array[0][$i]['name'];
          $product->slug = $array[0][$i]['slug'] ?? '';
          $product->thumb_image = $request->base_url.$array[0][$i]['thumb_image'] ?? '';
          $product->category_id = $array[0][$i]['category_id'] ?? 0;
          $product->sub_category_id = $array[0][$i]['sub_category_id'] ?? 0;
          $product->child_category_id = $array[0][$i]['child_category'] ?? 0;
          $product->brand_id = $array[0][$i]['brand_id'] ?? 0;
          $product->sku = $array[0][$i]['sku'] ?? '';
          $product->price = $array[0][$i]['price'] ?? 0;
          $product->offer_price = $array[0][$i]['offer_price'];
          $product->qty = $array[0][$i]['qty'] ?? 1;
          $product->short_description = $array[0][$i]['short_description'] ? strip_tags($array[0][$i]['short_description']) : '';
          $product->long_description = $array[0][$i]['long_description'] ?? '';
          $product->status = $array[0][$i]['status'] ?? 1;
          $product->weight = $array[0][$i]['weight'] ?? 1;
          $product->is_undefine = $array[0][$i]['is_undefine'] ?? 1;
          $product->is_specification = $array[0][$i]['is_specification'] ?? 0;
          $product->seo_title = $array[0][$i]['seo_title'] ?? '';
          $product->seo_description = $array[0][$i]['seo_description'] ?? '';
          $product->is_top = $array[0][$i]['is_top'] ?? 0;
          $product->new_product = $array[0][$i]['new_product'] ?? 0;
          $product->is_best = $array[0][$i]['is_best'] ?? 0;
          $product->is_featured = $array[0][$i]['is_featured'] ?? 0;
          $product->approve_by_admin = 1;
          $product->save();

          if(!str_contains($array[0][$i]['additional_attributes'], 'ar_type')){
            $variant_arr = explode(',',$array[0][$i]['additional_attributes']);
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
                // $var_item->price = 0;
                $var_item->price = $array[0][$i]['price'] ?? 0;
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
        if(!str_contains($array[0][$i]['additional_attributes'], 'ar_type')){
          $variant_arr = explode(',',$array[0][$i]['additional_attributes']);
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
              // $var_item->price = 0;
              $var_item->price = $array[0][$i]['price'] ?? 0;
              $var_item->status = 1;
              $var_item->is_default = 0;
              $var_item->save();
            }
          }
          if($product && $array[0][$i]['thumb_image'] != null){
            $product_gallery = new ProductGallery;
            $product_gallery->product_id = $product->id;
            $product_gallery->image = $request->base_url.$array[0][$i]['thumb_image'];
            $product_gallery->status = 1;
            $product_gallery->save();
          }
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

  public function translate()
  {
    $products = Product::where([['long_description_ar',''],['name_ar',''],['trendy_product',0]])->get();
    $tr = new GoogleTranslate('ar');

    foreach ($products as $key => $pro) {
      $product = Product::find($pro->id);
      $product->name_ar = $tr->translate(strip_tags($pro->name));
      $product->short_name_ar = $tr->translate(strip_tags($pro->short_name));
      $product->short_description_ar = $tr->translate(strip_tags($pro->short_description));
      $product->long_description_ar = $tr->translate(strip_tags($pro->long_description));
      $product->save();

    }

    $variants = ProductVariant::where('name_ar',null)->orWhere('name_ar','')->get();
    foreach ($variants as $key => $var) {
      $varient = ProductVariant::find($var->id);
      $varient->name_ar = $tr->translate($var->name);
      $varient->save();
    }

    $variants_items = ProductVariantItem::where('product_variant_name_ar',null)->orWhere('product_variant_name_ar','')->get();
    foreach ($variants_items as $key => $item) {
      $varient_item = ProductVariantItem::find($item->id);
      $varient_item->product_variant_name_ar = $tr->translate($item->product_variant_name);
      $varient_item->name_ar = $tr->translate($item->name);
      $varient_item->save();
    }

    $notification=array('messege'=>'Translate Successfully.','alert-type'=>'success');
    return redirect()->back()->with($notification);
  }

  public function import_trendy(Request $request)
  {
    $tr = new GoogleTranslate();
    $ex_prod = $cur_prod = '';

    $array = Excel::toArray(new ProductImport, $request->file);


    for($i=1; $i < count($array[0]); $i++) {
      if($array[0][$i]['producturl'] == null)
        continue;

      $ex_prod = $array[0][$i]['producturl'];
      if($ex_prod == $cur_prod)
        continue;

      $variant = $variant2 = $variant_val = $variant_price = $variant2_item = $variant2_price = $images = array();
      $variant_name = '';

      if($array[0][$i]['option1_name'])
      {

        $variant_name = $array[0][$i]['option1_name'];
        if(isset($array[0][$i]['option1_value_1']) && !in_array($array[0][$i]['option1_value_1'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_1'];

        if(isset($array[0][$i]['option1_value_2']) && !in_array($array[0][$i]['option1_value_2'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_2'];
        if(isset($array[0][$i]['option1_value_3']) && !in_array($array[0][$i]['option1_value_3'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_3'];
        if(isset($array[0][$i]['option1_value_4']) && !in_array($array[0][$i]['option1_value_4'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_4'];
        if(isset($array[0][$i]['option1_value_5']) && !in_array($array[0][$i]['option1_value_5'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_5'];
        if(isset($array[0][$i]['option1_value_6']) && !in_array($array[0][$i]['option1_value_6'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_6'];
        if(isset($array[0][$i]['option1_value_7']) && !in_array($array[0][$i]['option1_value_7'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_7'];
        if(isset($array[0][$i]['option1_value_8']) && !in_array($array[0][$i]['option1_value_8'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_8'];
        if(isset($array[0][$i]['option1_value_9']) && !in_array($array[0][$i]['option1_value_9'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_9'];
        if(isset($array[0][$i]['option1_value_10']) && !in_array($array[0][$i]['option1_value_10'],$variant_val))
          $variant_val[] = $array[0][$i]['option1_value_10'];
      }
      $variant2_name = '';

      for ($j=1; $j < 11; $j++) {
        for ($k=1; $k < 11; $k++) {

          if($array[0][$i]['option2_name'])
            $variant2_name = $array[0][$i]['option2_name'];

          if(isset($array[0][$i]['variant_'.$j.'_size_'.$k]) && !in_array($array[0][$i]['variant_'.$j.'_size_'.$k],$variant2_item)){
            $p = $array[0][$i]['variant_'.$j.'_size_'.$k.'_price'] / 2;
            $variant2_item[] = $array[0][$i]['variant_'.$j.'_size_'.$k];
            $variant2_price[] = $variant_price[] = $p;
          }

        }
      }

      $brand_id = 0;

      //Save brand in database
      if($array[0][$i]['brand_name'] != null)
      {
        $brand = Brand::where('name',$array[0][$i]['brand_name'])->first();
        if(!$brand)
        {
          $brand = new Brand;
          $brand->name = $array[0][$i]['brand_name'];
          $brand->slug = strtolower(str_replace(' ','-',$array[0][$i]['brand_name']));
          $brand->logo = '';
          $brand->status = 1;
          $brand->save();
          
        }
        $brand_id = $brand->id;

      }

      $price = 0;
      if($array[0][$i]['new_price'])
        $price = floatval(str_replace(',', '.', str_replace('.', '', str_replace(' TL','',$array[0][$i]['new_price'])))) / 2;

      $image = '';
      if($array[0][$i]['image_1']){
        $images = explode(',',preg_replace("/\r|\n/",',',$array[0][$i]['image_1']));
        $image = str_replace("/192","/1800",str_replace("/128","/1200",$images[0]));
      }

      $product = new Product;
      $product->name_ar = '';
      $product->short_name_ar = '';
      $product->short_description_ar = '';
      $product->long_description_ar = '';
      $product->brand_id = $brand_id;
      $product->product_url = $array[0][$i]['producturl'];
      $product->name = $array[0][$i]['name'] ?? '';
      $product->short_name = $array[0][$i]['name'] ?? '';
      $product->seo_title = $array[0][$i]['name'] ?? '';
      $product->seo_description = $array[0][$i]['description'] ?? '';
      $product->name_tr = $array[0][$i]['name'];
      $product->short_name_tr = $array[0][$i]['name'];
      $product->seo_title_tr = $array[0][$i]['name'];
      $product->seo_description_tr = $array[0][$i]['description'] ?? '';
      $product->category_id = 0;
      $product->sub_category_id = 0;
      $product->child_category_id = 0;

      $product->category_tr = $array[0][$i]['category1'];
      $product->sub_category_tr = $array[0][$i]['category2'];
      $product->child_category_tr = $array[0][$i]['category3'];

      $product->slug = str_replace(' ','-',strtolower($array[0][$i]['name']));
      // $product->slug = str_replace(' ','-',strtolower($tr->setSource('tr')->setTarget('en')->translate($array[0][$i][2])));
      $product->price = $price;
      $product->thumb_image = $image;
      $product->qty = 100;
      $product->short_description = $array[0][$i]['name'] ?? '';
      $product->long_description = $array[0][$i]['description'] ?? '';
      $product->long_description_tr = $array[0][$i]['description'] ?? '';

      $product->status = 1;
      $product->weight = 1;
      $product->is_undefine = 1;
      $product->is_specification = 0;

      $product->is_top = 0;
      $product->new_product =  0;
      $product->is_best = 0;
      $product->is_featured = 0;
      $product->approve_by_admin = 1;
      $product->in_tr = 1;
      $product->trendy_product = 1;
      $product->save();

      if($variant_name != '' && count($variant_val) > 0)
      {
        $varient_colr = new ProductVariant;
        $varient_colr->product_id = $product->id;
        $varient_colr->name = $variant_name;
        $varient_colr->status = 1;
        $varient_colr->save();

        foreach ($variant_val as $key => $value) {
          $var_item = new ProductVariantItem;
          $var_item->product_variant_id = $varient_colr->id;
          $var_item->product_variant_name = $variant_name;
          $var_item->product_id = $product->id;
          $var_item->name = $value;
          $var_item->name_tr = $value;
          $var_item->price = isset($variant_price[$key]) ? $variant_price[$key] : $price;
          $var_item->status = 1;
          $var_item->is_default = 0;
          $var_item->in_tr = 1;
          $var_item->save();
        }
        
      }

      if($variant2_name != '' && count($variant2_item) > 0)
      {
        $varient_colr = new ProductVariant;
        $varient_colr->product_id = $product->id;
        $varient_colr->name = $variant2_name;
        $varient_colr->status = 1;
        $varient_colr->save();

        foreach ($variant2_item as $key => $value) {
          $var_item = new ProductVariantItem;
          $var_item->product_variant_id = $varient_colr->id;
          $var_item->product_variant_name = $variant2_name;
          $var_item->product_id = $product->id;
          $var_item->name = $value;
          $var_item->name_tr = $value;
          $var_item->price = isset($variant2_price[$key]) ? $variant2_price[$key] : $price;
          $var_item->status = 1;
          $var_item->is_default = 0;
          $var_item->in_tr = 1;
          $var_item->save();
        }

      }

      if($array[0][$i]['image_1'])
      {
        foreach ($images as $key => $img) {
          if($img != '')
          {
            $product_gallery = new ProductGallery;
            $product_gallery->product_id = $product->id;
            $product_gallery->image = str_replace("/192","/1800",str_replace("/128","/1200",$img));;
            $product_gallery->status = 1;
            $product_gallery->save();
          }
          
        }
      }
      
      $cur_prod = $ex_prod;

      // dump($variant2_name);
      // dump($variant_val);
    // dump($variant2_item);

      // for($j = 1; $j < count($array[0][$i]); $j++)
      // {
        

      //   if($array[0][$i]['option2_name'])
      //   {
      //     $variant2_name = $array[0][$i]['option2_name'];

      //     if(isset($array[0][$i]['variant_1_size_'.$j])){
      //       $variant2['item'][] = $array[0][$i]['variant_1_size_'.$j];
      //       $variant2['price'][] = $array[0][$i]['variant_1_size_'.$j.'_price'];
      //     }
      //     else
      //       $variant2['item'][] = $variant2['price'][] = '1';

      //     if(isset($array[0][$i]['variant_2_size_'.$j]) && !in_array($array[0][$i]['variant_2_size_'.$j],$variant2['item'])){
      //       $variant2['item'][] = $array[0][$i]['variant_2_size_'.$j];
      //       $variant2['price'][] = $array[0][$i]['variant_2_size_'.$j.'_price'];
      //     }

      //   }

      // }

      // foreach ($variant as $key => $value) {
      //   dump($key);
      //   foreach ($value as $k => $val) {
      //     dump($val);
      //   }
        
      // }

      // foreach ($variant2 as $key => $value) {
      //   dump($key);
      //   foreach ($value as $k => $val) {
      //     dump($val);
      //   }
        
      // }

    }
    
    
    $notification=array('messege'=>'Import Successfully.','alert-type'=>'success');
    return redirect()->back()->with($notification);

  }
  public function import_trendy_old(Request $request)
  {
    $ex_prod = $cur_prod = '';

    for($i=1; $i < count($array[0]); $i++) {
      // $cur_prod = $array[0][$i][0];

      //If not current price ,category,sub category and name, Not import
      if($array[0][$i][40] != null && $array[0][$i][2] != null && $array[0][$i][20] != null && $array[0][$i][21] != null)
      {
        if(strpos($array[0][$i][0],'?'))
          $url = substr($array[0][$i][0], 0, strpos($array[0][$i][0], "?"));
        else
          $url = $array[0][$i][0];

        $price = floatval(str_replace(',', '.', str_replace('.', '', str_replace(' TL','',$array[0][$i][40])))) / 2;

        $product = Product::where([['product_url',$url],['trendy_product',1]])->first();
        // if($ex_prod != $cur_prod && $url != null)
        if(!$product)
        {
          $brand_id = 0;

          //Save brand in database
          if($array[0][$i][1] != null)
          {
            $brand = Brand::where('name',$array[0][$i][1])->first();
            if(!$brand)
            {
              $brand = new Brand;
              $brand->name = $array[0][$i][1];
              $brand->slug = strtolower(str_replace(' ','-',$array[0][$i][1]));
              $brand->logo = '';
              $brand->status = 1;
              $brand->save();
              
            }
            $brand_id = $brand->id;

          }

          $product = new Product;
          $product->name_ar = '';
          $product->short_name_ar = '';
          $product->short_description_ar = '';
          $product->long_description_ar = '';
          $product->brand_id = $brand_id;
          $product->product_url = $url;
          $product->name = $array[0][$i][2] ?? '';
          $product->short_name = $array[0][$i][3] ?? '';
          $product->seo_title = $array[0][$i][4] ?? '';
          $product->seo_description = $array[0][$i][6] ?? '';
          $product->name_tr = $array[0][$i][2];
          $product->short_name_tr = $array[0][$i][3];
          $product->seo_title_tr = $array[0][$i][4];
          $product->seo_description_tr = $array[0][$i][6];
          $product->category_id = 0;
          $product->sub_category_id = 0;
          $product->child_category_id = 0;

          $product->category_tr = $array[0][$i][20];
          $product->sub_category_tr = $array[0][$i][21];
          $product->child_category_tr = $array[0][$i][22];

          $product->slug = str_replace(' ','-',strtolower($tr->setSource('tr')->setTarget('en')->translate($array[0][$i][2])));
          $product->price = $price;
          $product->thumb_image = $array[0][$i][7] ?? '';
          $product->qty = 100;
          $product->short_description = $array[0][$i][2];
          $product->long_description_tr = $array[0][$i][5] ?? '';

          $product->status = $array[0][$i][15] ?? 1;
          $product->weight = 1;
          $product->is_undefine = $array[0][$i][10] ?? 1;
          $product->is_specification = $array[0][$i][16] ?? 0;

          $product->is_top = $array[0][$i][13] ?? 0;
          $product->new_product = $array[0][$i][12] ?? 0;
          $product->is_best = $array[0][$i][14] ?? 0;
          $product->is_featured = $array[0][$i][11] ?? 0;
          $product->approve_by_admin = 1;
          $product->in_tr = 1;
          $product->trendy_product = 1;
          $product->save();

          if($array[0][$i][36] != null)
          {
            $content = $array[0][$i][36];
 
              $doc = new \DOMDocument();
              $doc->loadHTML($content);
              $xml = simplexml_import_dom($doc); // making xpath more simple
              $images = $xml->xpath('//img');
              foreach ($images as $img) {
                if (isset($img["src"])) 
                {
                  $product_gallery = new ProductGallery;
                  $product_gallery->product_id = $product->id;
                  $product_gallery->image = str_replace("/192","/1800",str_replace("/128","/1200",$img['src']));
                  $product_gallery->status = 1;
                  $product_gallery->save();
                }
              }
            // $images = explode(',',preg_replace("/\r|\n/",'',$array[0][$i][37]));
            // foreach ($images as $key => $img) {
            //   if($img != '')
            //   {
            //     $product_gallery = new ProductGallery;
            //     $product_gallery->product_id = $product->id;
            //     $product_gallery->image = $img;
            //     $product_gallery->status = 1;
            //     $product_gallery->save();
            //   }
              
            // }

          }

          //Variants
          if($array[0][$i][37] && $array[0][$i][37] != null)
          {
            // $color_arr = array();

            $varient_colr = new ProductVariant;
            $varient_colr->product_id = $product->id;
            $varient_colr->name = 'Color';
            $varient_colr->status = 1;
            $varient_colr->save();

            $var_item = new ProductVariantItem;
            $var_item->product_variant_id = $varient_colr->id;
            $var_item->product_variant_name = 'Color';
            $var_item->product_id = $product->id;
            $var_item->name = $array[0][$i][37];
            $var_item->name_tr = $array[0][$i][37];
            $var_item->price = $price;
            $var_item->status = 1;
            $var_item->is_default = 0;
            $var_item->in_tr = 1;
            $var_item->save();

            // $color_arr[] = $array[0][$i][37];
          }

          if($array[0][$i][38] && $array[0][$i][38] != null)
          {
            // $size_arr = array();

            $varient_size = new ProductVariant;
            $varient_size->product_id = $product->id;
            $varient_size->name = 'Size';
            $varient_size->status = 1;
            $varient_size->save();

            $var_item = new ProductVariantItem;
            $var_item->product_variant_id = $varient_size->id;
            $var_item->product_variant_name = 'Size';
            $var_item->product_id = $product->id;
            $var_item->name = $array[0][$i][38];
            $var_item->name_tr = $array[0][$i][38];
            $var_item->price = $price;
            $var_item->status = 1;
            $var_item->is_default = 0;
            $var_item->in_tr = 1;
            $var_item->save();

            // $size_arr[] = $array[0][$i][38];
          }

          // $ex_prod = $cur_prod;

        }
        else
        {
          
          // if($array[0][$i][37] && $array[0][$i][37] != null && !in_array($array[0][$i][37],$color_arr))
          if($array[0][$i][37] && $array[0][$i][37] != null)
          {
            $varient_colr = ProductVariant::where([['product_id',$product->id],['name','Color']])->first();
            if(!$varient_colr)
            {
              $varient_colr = new ProductVariant;
              $varient_colr->product_id = $product->id;
              $varient_colr->name = 'Color';
              $varient_colr->status = 1;
              $varient_colr->save();
            }

            $pre_var_item = ProductVariantItem::where([['product_id',$product->id],['product_variant_name','Color'],['name',$array[0][$i][37]]])->first();
            if(!$pre_var_item)
            {
              $var_item = new ProductVariantItem;
              $var_item->product_variant_id = $varient_colr->id;
              $var_item->product_variant_name = 'Color';
              $var_item->product_id = $product->id;
              $var_item->name = $array[0][$i][37];
              $var_item->name_tr = $array[0][$i][37];
              $var_item->price = $price;
              $var_item->status = 1;
              $var_item->is_default = 0;
              $var_item->in_tr = 1;
              $var_item->save();
            }
            

            // $color_arr[] = $array[0][$i][36];
          }

          
          // if($array[0][$i][38] && $array[0][$i][38] != null && !in_array($array[0][$i][38],$size_arr))
          if($array[0][$i][38] && $array[0][$i][38] != null)
          {
            
            $varient_size = ProductVariant::where([['product_id',$product->id],['name','Size']])->first();
            if(!$varient_size)
            {
              $varient_size = new ProductVariant;
              $varient_size->product_id = $product->id;
              $varient_size->name = 'Size';
              $varient_size->status = 1;
              $varient_size->save();
            }

            $pre_var_item = ProductVariantItem::where([['product_id',$product->id],['product_variant_name','Size'],['name',$array[0][$i][38]]])->first();
            if(!$pre_var_item)
            {
              $var_item = new ProductVariantItem;
              $var_item->product_variant_id = $varient_size->id;
              $var_item->product_variant_name = 'Size';
              $var_item->product_id = $product->id;
              $var_item->name = $array[0][$i][38];
              $var_item->name_tr = $array[0][$i][38];
              $var_item->price = $price;
              $var_item->status = 1;
              $var_item->is_default = 0;
              $var_item->in_tr = 1;
              $var_item->save();

            }

            // $size_arr[] = $array[0][$i][38];
          }
        }


      }// End If not current price, Not import
      

    }//end for loop
  }
  public function translate_turkish()
  {
    $tr = new GoogleTranslate();

    $products = Product::where('in_tr',1)->get();
    foreach ($products as $key => $pro) {

      $current_pro = Product::find($pro->id);
      $en_name = $tr->setSource('tr')->setTarget('en')->translate($current_pro->name_tr);
      $ar_name = $tr->setSource('tr')->setTarget('ar')->translate($current_pro->name_tr);

      $current_pro->name = $en_name;
      $current_pro->short_name = $tr->setSource('tr')->setTarget('en')->translate($current_pro->short_name_tr);
      $current_pro->short_description = $en_name;
      $current_pro->long_description = $current_pro->long_description_tr ? $tr->setSource('tr')->setTarget('en')->translate($current_pro->long_description_tr) : '';
      $current_pro->seo_title = $current_pro->seo_title_tr ? $tr->setSource('tr')->setTarget('en')->translate($current_pro->seo_title_tr) : '';
      $current_pro->seo_description = $current_pro->seo_description_tr ? $tr->setSource('tr')->setTarget('en')->translate($current_pro->seo_description_tr) : '';
      $current_pro->name_ar = $ar_name;
      $current_pro->short_name_ar = $current_pro->short_name_tr ? $tr->setSource('tr')->setTarget('ar')->translate($current_pro->short_name_tr) : '';
      $current_pro->short_description_ar = $ar_name;
      $current_pro->in_tr = 0;
      $current_pro->save();

    }

    $var_items = ProductVariantItem::where('in_tr',1)->get();
    foreach ($var_items as $key => $var_item) {
      $current_var = ProductVariantItem::find($var_item->id);
      $current_var->name = $tr->setSource('tr')->setTarget('en')->translate($current_var->name_tr);
      $current_var->name_ar = $tr->setSource('tr')->setTarget('ar')->translate($current_var->name_tr);
      $current_var->in_tr = 0;
      $current_var->save();
    }

    $notification=array('messege'=>'Translate Successfully.','alert-type'=>'success');
    return redirect()->route('admin.trendy-products')->with($notification);

  }

  public function change_categories_turkish(Request $request)
  {
    for($i = 0; $i < count($request->category_tr); $i++)
    {

      if($request->category_tr[$i] != '' && $request->category_id[$i] != '' && $request->sub_category_tr[$i] != '' && $request->sub_category_id[$i] != '' && $request->child_category_tr[$i] != '' && $request->child_category_id[$i] != '')
      {
        $products = Product::where([['category_tr',$request->category_tr[$i]],['sub_category_tr',$request->sub_category_tr[$i]],['child_category_tr',$request->child_category_tr[$i]]])->update([
          'category_id' => $request->category_id[$i],
          'sub_category_id' => $request->sub_category_id[$i],
          'child_category_id' => $request->child_category_id[$i]
        ]);
        
      }
      elseif($request->category_tr[$i] != '' && $request->category_id[$i] != '' && $request->sub_category_tr[$i] != '' && $request->sub_category_id[$i] != '')
      {
        $products = Product::where([['category_tr',$request->category_tr[$i]],['sub_category_tr',$request->sub_category_tr[$i]]])->update([
          'category_id' => $request->category_id[$i],
          'sub_category_id' => $request->sub_category_id[$i]
          ]);

      }
      elseif($request->category_tr[$i] != '' && $request->category_id[$i] != '')
      {
        $products = Product::where('category_tr',$request->category_tr[$i])->update(['category_id' => $request->category_id[$i]]);

      }
    }
    
    $notification=array('messege'=>'Categories updated.','alert-type'=>'success');
    return redirect()->route('admin.trendy-products')->with($notification);
  }

  public function single_categories_turkish(Request $request)
  {

    $products = Product::where([['category_tr',$request->category_tr],['sub_category_tr',$request->sub_category_tr],['child_category_tr',$request->child_category_tr]])->update([
      'category_id' => $request->category_id,
      'sub_category_id' => $request->sub_category_id,
      'child_category_id' => 0
    ]);

    $notification=array('messege'=>'Categories updated.','alert-type'=>'success');
    return redirect()->route('admin.trendy-products')->with($notification);
    
  }
  public function test1()
  {
    $i = 5;
    while($i > 1)
    {
      \DB::table('test')->insert(['data' => date('Y-m-d H:i:s')]);
    }
    
  }

  public function test2()
  {
    \DB::table('test')->insert(['data' => date('Y-m-d H:i:s')]);
    
  }

}
