@extends('admin.master_layout')
@section('title')
<title>{{__('Testimonial')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Edit Testimonial')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item active"><a href="{{ route('admin.testimonial.index') }}">{{__('Testimonial')}}</a></div>
              <div class="breadcrumb-item">{{__('Edit Testimonial')}}</div>
            </div>
          </div>

          <div class="section-body">
            <a href="{{ route('admin.testimonial.index') }}" class="btn btn-primary"><i class="fas fa-list"></i> {{__('Testimonial')}}</a>
            <div class="row mt-4">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                        <form action="{{ route('admin.testimonial.update', $testimonial->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="form-group col-12">
                                    <label>{{__('Existing Image')}}</label>
                                    <div>
                                        <img src="{{ asset($testimonial->image) }}" alt="" width="150px">
                                    </div>
                                </div>
                                <div class="form-group col-12">
                                    <label>{{__('Image')}} <span class="text-danger">*</span></label>
                                    <input type="file" id="title" class="form-control-file"  name="image">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Name')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="name" class="form-control"  name="name" value="{{ $testimonial->name }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Desgination')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="designation" class="form-control"  name="designation" value="{{ $testimonial->designation }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Comment')}} <span class="text-danger">*</span></label>
                                    <textarea name="comment" id="comment" cols="30" rows="10" class="form-control text-area-5">{{ $testimonial->comment }}</textarea>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Rating')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="rating" class="form-control"  name="rating" value="{{ $testimonial->rating }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Status')}} <span class="text-danger">*</span></label>
                                    <select name="status" class="form-control">
                                        <option  {{ $testimonial->status == 1 ? 'selected' : '' }} value="1">{{__('Active')}}</option>
                                        <option  {{ $testimonial->status == 0 ? 'selected' : '' }} value="0">{{__('Inactive')}}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button class="btn btn-primary">{{__('Save')}}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                  </div>
                </div>
          </div>
        </section>
      </div>
@endsection
