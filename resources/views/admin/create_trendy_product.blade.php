@extends('admin.master_layout')
@section('title')
<title>{{__('admin.Products')}}</title>
@endsection
@section('admin-content')
<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>{{__('admin.Create Product')}}</h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('admin.Dashboard')}}</a></div>
        <div class="breadcrumb-item">{{__('admin.Create Product')}}</div>
      </div>
    </div>

    <div class="section-body">
      <a href="{{ route('admin.product.index') }}" class="btn btn-primary"><i class="fas fa-list"></i> {{__('admin.Products')}}</a>


      <div class="row mt-4">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
                  <h3>Trendy Products Import</h3>
                </div>
                <div class="col-md-6">
                  <a href="{{asset('sample/trendyol_product_sample.csv')}}" class="btn btn-success" style="float:right;">Download Sample</a>
                </div>
              </div>
              
              
              <form method="post" action="{{ route('admin.product-import-trendy') }}" enctype="multipart/form-data">
                @csrf

                
                <div class="form-group col-12">
                  <label>{{__('Image')}} <span class="text-danger">*</span></label>
                  <input type="file" name="file" class="form-control" id="file">
                </div>
                <div class="form-group col-12">
                    <button type="submit" class="btn btn-primary">Import</button>
                </div>

                <div class="form-group col-12">
                    <a href="{{route('admin.translate-turkish')}}" class="btn btn-success">Translate Trendy Products</a>
                </div>

              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="row mt-4">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
                  <h3>Trendy Products Change Categories</h3>
                </div>
              </div>
              
              
              <form method="post" action="{{ route('admin.change-categories-turkish') }}" enctype="multipart/form-data">
                @csrf

                <div id="MainSection">
                  <div class="parent_div">
                  
                    <div class="row">
                      <div class="col-md-6 form-group">
                        <select class="form-control category_tr_cl" name="category_tr[]">
                          <option value="">Select Main Category Turkish</option>
                          @foreach($categories_tr as $cat)
                          <option value="{{$cat->category_tr}}">{{$cat->category_tr}}</option>
                          @endforeach
                        </select>
                      </div>
                      <div class="col-md-6 form-group">
                        <select class="form-control main_cat_cl" name="category_id[]">
                          <option value="">Select Main Category</option>
                          @foreach($categories as $cat)
                          <option value="{{$cat->id}}">{{$cat->name}}</option>
                          @endforeach
                        </select>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6 form-group">
                        <select class="form-control sub_category_tr_cl" name="sub_category_tr[]">
                          <option value="">Select Sub Category Turkish</option>
                        </select>
                      </div>
                      <div class="col-md-6 form-group">
                        <select class="form-control sub_category_cl" name="sub_category_id[]">
                          <option value="">Select Sub Category</option>
                        </select>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-5 form-group">
                        <select class="form-control child_category_tr_cl" name="child_category_tr[]">
                          <option value="">Select Child Category Turkish</option>
                        </select>
                      </div>
                      <div class="col-md-5 form-group">
                        <select class="form-control child_category_cl" name="child_category_id[]">
                          <option value="">Select Child Category</option>
                        </select>
                      </div>
                      <div class="col-md-2 form-group">
                        <button type="button" class="btn btn-success plus_btn1" id="addNewCategoryRow"><i class="fas fa-plus"></i></button>
                      </div>
                    </div>
                  </div>
                </div>

                <div id="deleteMainSection" class="d-none">
                  <div class="deletecategorySection parent_div">
                    <div class="row">
                      <div class="col-md-6 form-group">
                        <select class="form-control category_tr_cl" name="category_tr[]">
                          <option value="">Select Main Category Turkish</option>
                          @foreach($categories_tr as $cat)
                          <option value="{{$cat->category_tr}}">{{$cat->category_tr}}</option>
                          @endforeach
                        </select>
                      </div>
                      <div class="col-md-6 form-group">
                        <select class="form-control main_cat_cl" name="category_id[]">
                          <option value="">Select Main Category</option>
                          @foreach($categories as $cat)
                          <option value="{{$cat->id}}">{{$cat->name}}</option>
                          @endforeach
                        </select>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6 form-group">
                        <select class="form-control sub_category_tr_cl" name="sub_category_tr[]">
                          <option value="">Select Sub Category Turkish</option>
                        </select>
                      </div>
                      <div class="col-md-6 form-group">
                        <select class="form-control sub_category_cl" name="sub_category_id[]">
                          <option value="">Select Sub Category</option>
                        </select>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-5 form-group">
                        <select class="form-control child_category_tr_cl" name="child_category_tr[]">
                          <option value="">Select Child Category Turkish</option>
                        </select>
                      </div>
                      <div class="col-md-5 form-group">
                        <select class="form-control child_category_cl" name="child_category_id[]">
                          <option value="">Select Child Category</option>
                        </select>
                      </div>
                      <div class="col-md-2 form-group">
                        <button type="button" class="btn btn-danger plus_btn1 deleteCategoryRow"><i class="fas fa-trash"></i></button>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="form-group col-12">
                      <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </div>
                


              </form>
            </div>
          </div>
        </div>
      </div>


      <div class="row mt-4">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-md-6">
                  <h3>Trendy Change Single Categories</h3>
                </div>
              </div>
              
              
              <form method="post" action="{{ route('admin.single-categories-turkish') }}" enctype="multipart/form-data">
                @csrf

                <div id="MainSection">
                  <div class="parent_div">
                    <div class="row">
                      <div class="col-md-6 form-group">
                        <select class="form-control category_tr_cl" name="category_tr" required>
                          <option value="">Select Main Category Turkish</option>
                          @foreach($categories_tr as $cat)
                          <option value="{{$cat->category_tr}}">{{$cat->category_tr}}</option>
                          @endforeach
                        </select>
                      </div>
                      <div class="col-md-6 form-group">
                        <select class="form-control main_cat_cl" name="category_id" required>
                          <option value="">Select Main Category</option>
                          @foreach($categories as $cat)
                          <option value="{{$cat->id}}">{{$cat->name}}</option>
                          @endforeach
                        </select>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6 form-group">
                        <select class="form-control sub_category_tr_cl" name="sub_category_tr" required>
                          <option value="">Select Sub Category Turkish</option>
                        </select>
                      </div>
                      <div class="col-md-6 form-group">
                        <select class="form-control sub_category_cl" name="sub_category_id" required>
                          <option value="">Select Sub Category</option>
                        </select>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6 form-group">
                        <select class="form-control child_category_tr_cl" name="child_category_tr" required>
                          <option value="">Select Child Category Turkish</option>
                        </select>
                      </div>
                      {{-- <div class="col-md-6 form-group">
                        <select class="form-control child_category_cl" name="child_category_id">
                          <option value="">Select Child Category</option>
                        </select>
                      </div> --}}

                    </div>
                  </div>
                </div>


                <div class="row">
                  <div class="form-group col-12">
                      <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </div>
                


              </form>
            </div>
          </div>
        </div>
      </div>

    </section>
  </div>

  

  <script>
    (function($) {
      "use strict";
      var specification = true;
      $(document).ready(function () {
        $("#name").on("focusout",function(e){
          $("#slug").val(convertToSlug($(this).val()));
        })

        $("#category").on("change",function(){
          var categoryId = $("#category").val();
          if(categoryId){
            $.ajax({
              type:"get",
              url:"{{url('/admin/subcategory-by-category/')}}"+"/"+categoryId,
              success:function(response){
                $("#sub_category").html(response.subCategories);
                var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
                $("#child_category").html(response);
              },
              error:function(err){
                console.log(err);

              }
            })
          }else{
            var response= "<option value=''>{{__('admin.Select Sub Category')}}</option>";
            $("#sub_category").html(response);
            var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
            $("#child_category").html(response);
          }


        })

        $("#sub_category").on("change",function(){
          var SubCategoryId = $("#sub_category").val();
          if(SubCategoryId){
            $.ajax({
              type:"get",
              url:"{{url('/admin/childcategory-by-subcategory/')}}"+"/"+SubCategoryId,
              success:function(response){
                $("#child_category").html(response.childCategories);
              },
              error:function(err){
                console.log(err);

              }
            })
          }else{
            var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
            $("#child_category").html(response);
          }

        })

        $("#is_return").on('change',function(){
          var returnId = $("#is_return").val();
          if(returnId == 1){
            $("#policy_box").removeClass('d-none');
          }else{
            $("#policy_box").addClass('d-none');
          }

        })

        $("#addNewSpecificationRow").on('click',function(){
          var html = $("#hidden-specification-box").html();
          $("#specification-box").append(html);
        })
        $(document).on('click', '.deleteSpeceficationBtn', function () {
          $(this).closest('.delete-specification-row').remove();
        });


        $('#addNewCategoryRow').on('click',function(){
          var html = $("#deleteMainSection").html();
          $("#MainSection").append(html);
        })

        $(document).on('click', '.deleteCategoryRow', function () {
          $(this).closest('.deletecategorySection').remove();
        });

        $(document).on("change", ".main_cat_cl" , function() {
          var sub_category_cl = $(this).parents('.parent_div').find('.sub_category_cl');
          var child_category_cl = $(this).parents('.parent_div').find('.child_category_cl');

          var categoryId = $(this).val();
          if(categoryId){
            $.ajax({
              type:"get",
              url:"{{url('/admin/subcategory-by-category/')}}"+"/"+categoryId,
              success:function(response){

                sub_category_cl.html(response.subCategories);
                var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
                child_category_cl.html(response);
              },
              error:function(err){
                console.log(err);

              }
            })
          }else{

            var response= "<option value=''>{{__('admin.Select Sub Category')}}</option>";
            sub_category_cl.html(response);
            var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
            child_category_cl.html(response);
          }


        })

        $(document).on("change", ".sub_category_cl" , function() {
          var SubCategoryId = $(this).val();
          var child_category_cl = $(this).parents('.parent_div').find('.child_category_cl');

          if(SubCategoryId){
            $.ajax({
              type:"get",
              url:"{{url('/admin/childcategory-by-subcategory/')}}"+"/"+SubCategoryId,
              success:function(response){
                child_category_cl.html(response.childCategories);
              },
              error:function(err){
                console.log(err);

              }
            })
          }else{
            var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
            child_category_cl.html(response);
          }

        })


        $(document).on("change", ".category_tr_cl" , function() {
          
          var sub_category_tr_cl = $(this).parents('.parent_div').find('.sub_category_tr_cl');
          var child_category_tr_cl = $(this).parents('.parent_div').find('.child_category_tr_cl');

          var categoryId = $(this).val();
          if(categoryId){
            $.ajax({
              type:"get",
              url:"{{url('/admin/subcategory-by-category-turkish/')}}"+"/"+categoryId,
              success:function(response){

                sub_category_tr_cl.html(response.subCategories);
                var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
                child_category_tr_cl.html(response);
              },
              error:function(err){
                console.log(err);

              }
            })
          }else{

            var response= "<option value=''>{{__('admin.Select Sub Category')}}</option>";
            sub_category_tr_cl.html(response);
            var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
            child_category_tr_cl.html(response);
          }


        })

        $(document).on("change", ".sub_category_tr_cl" , function() {
          
          var SubCategoryId = $(this).val();
          var category_tr_cl = $(this).parents('.parent_div').find('.category_tr_cl');

          var child_category_tr_cl = $(this).parents('.parent_div').find('.child_category_tr_cl');
          
          if(SubCategoryId){
            $.ajax({
              type:"get",
              url:"{{url('/admin/childcategory-by-subcategory-turkish/')}}"+"/"+category_tr_cl.val()+"/"+SubCategoryId,
              success:function(response){
                child_category_tr_cl.html(response.childCategories);
              },
              error:function(err){
                console.log(err);

              }
            })
          }else{
            var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
            child_category_tr_cl.html(response);
          }

        })


        $("#manageSpecificationBox").on("click",function(){
          if(specification){
            specification = false;
            $("#specification-box").addClass('d-none');
          }else{
            specification = true;
            $("#specification-box").removeClass('d-none');
          }


        })

      });
    })(jQuery);

    function convertToSlug(Text){
      return Text
      .toLowerCase()
      .replace(/[^\w ]+/g,'')
      .replace(/ +/g,'-');
    }

    function previewThumnailImage(event) {
      var reader = new FileReader();
      reader.onload = function(){
        var output = document.getElementById('preview-img');
        output.src = reader.result;
      }
      reader.readAsDataURL(event.target.files[0]);
    };

  </script>


  @endsection
