@extends('admin.master_layout')
@section('title')
<title>{{__('admin.Product Sub Category')}}</title>
@endsection
@section('admin-content')
<!-- Main Content -->
<div class="main-content">
  <section class="section">
    <div class="section-header">
      <h1>{{__('admin.Create Product Sub Category')}}</h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="{{ route('admin.product-category.index') }}">{{__('admin.Product Category')}}</a></div>
        <div class="breadcrumb-item">{{__('admin.Create Product Sub Category')}}</div>
      </div>
    </div>

    <div class="section-body">
      <a href="{{ route('admin.product-sub-category.index') }}" class="btn btn-primary"><i class="fas fa-list"></i> {{__('admin.Product Sub Category')}}</a>


      


      <div class="row mt-4">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <form action="{{ route('admin.product-sub-category.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">

                  <div class="form-group col-12">
                    <label>{{__('admin.Category')}} <span class="text-danger">*</span></label>
                    <select name="category" id="category" class="form-control">
                      <option value="">{{__('admin.Select Category')}}</option>
                      @foreach ($categories as $category)
                      <option value="{{ $category->id }}">{{ $category->name }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group col-12">
                    <label>{{__('admin.Sub Category Name')}} <span class="text-danger">*</span></label>
                    <input type="text" id="name" class="form-control"  name="name">
                  </div>
                  <div class="form-group col-12">
                    <label>{{__('admin.Slug')}} <span class="text-danger">*</span></label>
                    <input type="text" id="slug" class="form-control"  name="slug">
                  </div>

                  <div class="form-group col-12">
                    <label>{{__('admin.Status')}} <span class="text-danger">*</span></label>
                    <select name="status" class="form-control">
                      <option value="1">{{__('admin.Active')}}</option>
                      <option value="0">{{__('admin.Inactive')}}</option>
                    </select>
                  </div>
                  <div class="form-group col-12">
                    <label>{{__('Image')}} <span class="text-danger">*</span></label>
                    <input type="file" name="image" class="form-control" id="image">
                  </div>
                  <div class="form-group col-12">
                    <label>{{__('Image')}} 2</label>
                    <input type="file" name="image2" class="form-control" id="image2">
                  </div>
                </div>
                <div class="row">
                  <div class="col-12">
                    <button class="btn btn-primary">{{__('admin.Save')}}</button>
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

              <form method="post" action="{{ route('admin.product.sub.category.import') }}" enctype="multipart/form-data">
                @csrf
                <div class="form-group col-12">
                  <label>Main Category <span class="text-danger">*</span></label>
                  <input type="text" name="main_cat" class="form-control" required>
                </div>

                <div class="form-group col-12">
                  <label>{{__('Image')}} <span class="text-danger">*</span></label>
                  <input type="file" name="image" class="form-control" id="image" required>
                </div>
                <div class="form-group col-12">
                    <button type="submit" class="btn btn-primary">Import</button>
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
      $(document).ready(function () {
        $("#name").on("focusout",function(e){
          $("#slug").val(convertToSlug($(this).val()));
        })
      });
    })(jQuery);

    function convertToSlug(Text)
    {
      return Text
      .toLowerCase()
      .replace(/[^\w ]+/g,'')
      .replace(/ +/g,'-');
    }
  </script>
  @endsection
