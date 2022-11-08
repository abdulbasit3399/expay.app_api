<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\BlogComment;
use App\Models\PopularPost;
use Illuminate\Http\Request;
use App\Models\Country;
use App\Models\City;
use  Image;
use File;
use Auth;
class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $blogs = Blog::with('category','comments')->get();
        return view('admin.blog',compact('blogs'));
    }


    public function create()
    {
        $categories = BlogCategory::where('status',1)->get();
        return view('admin.create_blog',compact('categories'));
    }
    public function save_city()
    {
        $countries = Country::where('status',1)->get();
        foreach ($countries as $key => $count) {
            $params = array(
                'ClientInfo'            => $this->_getClientInfo(),

                'Transaction'           => array(
                                            'Reference1'            => '001',
                                            'Reference2'            => '002',
                                            'Reference3'            => '003',
                                            'Reference4'            => '004',
                                            'Reference5'            => '005'
                                     
                                        ),
                'CountryCode'           => $count->code,

                'State'             => NULL,

                'NameStartsWith'        => ''

                );
            $soapClient = new \SoapClient(storage_path('aramex/Location-APIWSDL.wsdl'), array('trace' => 1));
            $results = $soapClient->FetchCities($params); 
            for ($i=0; $i < count($results->Cities->string); $i++) { 
                $city = new City;
                $city->country_id = $count->id;
                $city->country_state_id = 0;
                $city->name = $results->Cities->string[$i];
                $city->slug = $results->Cities->string[$i];
                $city->status = 1;
                $city->save();
            }
        }
        
        // return $results;
    }
    private function _getClientInfo()
    {
        return [
            'AccountNumber'         => '4004636',
            'UserName'              => 'reem@reem.com',
            'Password'              => '123456789',
            'AccountPin'            => '432432',
            'AccountEntity'         => 'RUH',
            'AccountCountryCode'    => 'SA',
            'Version'               => 'v1',
            'Source'             => null
        ];
        // return [
        //     'AccountNumber'         => '60520280',
        //     'UserName'              => 'zahraa.muzahem@icloud.com',
        //     'Password'              => 'Zahraa@20',
        //     'AccountPin'            => '321321',
        //     'AccountEntity'         => 'DOH',
        //     'AccountCountryCode'    => 'QA',
        //     'Version'               => 'v1',
        //     'Source'             => null
        // ];
    }

    public function store(Request $request)
    {
        $rules = [
            'title'=>'required|unique:blogs',
            'slug'=>'required|unique:blogs',
            'image'=>'required',
            'description'=>'required',
            'category'=>'required',
            'status'=>'required',
            'show_homepage'=>'required',
        ];
        $customMessages = [
            'title.required' => trans('admin_validation.Title is required'),
            'title.unique' => trans('admin_validation.Title already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'image.required' => trans('admin_validation.Image is required'),
            'description.required' => trans('admin_validation.Description is required'),
            'category.required' => trans('admin_validation.Category is required'),
            'show_homepage.required' => trans('admin_validation.Show homepage is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        $admin = Auth::guard('admin')->user();
        $blog = new Blog();
        if($request->image){
            $extention=$request->image->getClientOriginalExtension();
            $image_name = 'blog-'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image_name ='uploads/custom-images/'.$image_name;
            Image::make($request->image)
                ->save(public_path().'/'.$image_name);
            $blog->image = $image_name;
        }

        $blog->admin_id = $admin->id;
        $blog->title = $request->title;
        $blog->slug = $request->slug;
        $blog->description = $request->description;
        $blog->blog_category_id = $request->category;
        $blog->status = $request->status;
        $blog->show_homepage = $request->show_homepage;
        $blog->seo_title = $request->seo_title ? $request->seo_title : $request->title;
        $blog->seo_description = $request->seo_description ? $request->seo_description : $request->title;
        $blog->save();

        $notification= trans('admin_validation.Created Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);
    }

    public function edit($id)
    {
        $categories = BlogCategory::where('status',1)->get();
        $blog = Blog::find($id);
        return view('admin.edit_blog',compact('categories','blog'));
    }


    public function show($id)
    {
        $blog = Blog::with('category','comments')->find($id);
        return response()->json(['blog' => $blog], 200);
    }


    public function update(Request $request,$id)
    {
        $blog = Blog::find($id);
        $rules = [
            'title'=>'required|unique:blogs,title,'.$blog->id,
            'slug'=>'required|unique:blogs,slug,'.$blog->id,
            'description'=>'required',
            'category'=>'required',
            'status'=>'required',
            'show_homepage'=>'required',
        ];
        $customMessages = [
            'title.required' => trans('admin_validation.Title is required'),
            'title.unique' => trans('admin_validation.Title already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'description.required' => trans('admin_validation.Description is required'),
            'category.required' => trans('admin_validation.Category is required'),
            'show_homepage.required' => trans('admin_validation.Show homepage is required'),
        ];
        $this->validate($request, $rules,$customMessages);

        if($request->image){
            $old_image = $blog->image;
            $extention=$request->image->getClientOriginalExtension();
            $image_name = 'blog-'.date('-Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image_name ='uploads/custom-images/'.$image_name;
            Image::make($request->image)
                ->save(public_path().'/'.$image_name);
            $blog->image = $image_name;
            $blog->save();
            if($old_image){
                if(File::exists(public_path().'/'.$old_image))unlink(public_path().'/'.$old_image);
            }
        }

        $blog->title = $request->title;
        $blog->slug = $request->slug;
        $blog->description = $request->description;
        $blog->blog_category_id = $request->category;
        $blog->status = $request->status;
        $blog->show_homepage = $request->show_homepage;
        $blog->seo_title = $request->seo_title ? $request->seo_title : $request->title;
        $blog->seo_description = $request->seo_description ? $request->seo_description : $request->title;
        $blog->save();

        $notification= trans('admin_validation.Updated Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->route('admin.blog.index')->with($notification);
    }

    public function destroy($id)
    {
        $blog = Blog::find($id);
        $old_image = $blog->image;
        $blog->delete();
        if($old_image){
            if(File::exists(public_path().'/'.$old_image))unlink(public_path().'/'.$old_image);
        }

        BlogComment::where('blog_id',$id)->delete();
        PopularPost::where('blog_id',$id)->delete();

        $notification=  trans('admin_validation.Delete Successfully');
        $notification = array('messege'=>$notification,'alert-type'=>'success');
        return redirect()->back()->with($notification);
    }

    public function changeStatus($id){
        $blog = Blog::find($id);
        if($blog->status==1){
            $blog->status=0;
            $blog->save();
            $message= trans('admin_validation.Inactive Successfully');
        }else{
            $blog->status=1;
            $blog->save();
            $message= trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
}
