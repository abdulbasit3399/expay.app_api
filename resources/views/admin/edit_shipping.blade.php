<form action="{{ route('admin.shipping.update', $shipping->id) }}" method="POST">
    @method('PUT')
    @csrf
    <div class="row">

        <div class="form-group col-12">
            <label>{{__('City / Delivery Area')}} <span class="text-danger">*</span></label>
            <select name="city_id" id="" class="form-control select2">
                <option value="0">{{__('All')}}</option>
                @foreach ($cities as $city)
                <option {{ $shipping->city_id == $city->id ? 'selected' : '' }} value="{{ $city->id }}">{{ $city->name }}, {{ $city->countryState->name }}, {{ $city->countryState->country->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group col-12">
            <label>{{__('Shipping Rule')}} <span class="text-danger">*</span></label>
            <input type="text" id="shipping_rule" class="form-control"  name="shipping_rule" autocomplete="off" value="{{ $shipping->shipping_rule }}">
        </div>
        <div class="form-group col-12">
            <label>{{__('Shipping Rule')}} AR<span class="text-danger">*</span></label>
            <input type="text" id="shipping_rule_ar" class="form-control"  name="shipping_rule_ar" autocomplete="off" value="{{ $shipping->shipping_rule_ar }}">
        </div>

        <div class="form-group col-12">
            <label>{{__('Type')}} <span class="text-danger">*</span></label>
            <select name="type" id="edit_type_id" class="form-control">
                <option {{ $shipping->type == 'base_on_price' ? 'selected' : '' }} value="base_on_price">{{__('Based on product price')}}</option>
                <option {{ $shipping->type == 'base_on_weight' ? 'selected' : '' }} value="base_on_weight">{{__('Based on product weight (g)')}}</option>
                <option {{ $shipping->type == 'base_on_qty' ? 'selected' : '' }} value="base_on_qty">{{__('Based on product quantity')}}</option>
            </select>
        </div>

        <div class="form-group col-6">
            <label>{{__('Condition From')}} <span class="text-danger">*</span></label>
            <div class="input-group mb-3">
                @if ($shipping->type == 'base_on_price')
                <span class="input-group-text edit_type_class"> {{ $setting->currency_icon }}</span>
                @elseif ($shipping->type == 'base_on_weight')
                <span class="input-group-text edit_type_class">g</span>
                @elseif ($shipping->type == 'base_on_qty')
                <span class="input-group-text edit_type_class">qty</span>
                @endif

                <input type="text" class="form-control" name="condition_from" autocomplete="off" value="{{ $shipping->condition_from }}">
            </div>
        </div>

        <div class="form-group col-6">
            <label>{{__('Condition To')}} <span class="text-danger">*</span></label>
            <div class="input-group mb-3">
                @if ($shipping->type == 'base_on_price')
                    <span class="input-group-text edit_type_class"> {{ $setting->currency_icon }}</span>
                @elseif ($shipping->type == 'base_on_weight')
                    <span class="input-group-text edit_type_class">g</span>
                @elseif ($shipping->type == 'base_on_qty')
                    <span class="input-group-text edit_type_class">qty</span>
                @endif
                <input type="text" class="form-control" name="condition_to" autocomplete="off" value="{{ $shipping->condition_to }}">
            </div>
        </div>

        <div class="form-group col-12">
            <label>{{__('Shipping Fee')}} <span class="text-danger">*</span></label>
            <div class="input-group mb-3">
                <span class="input-group-text"> {{ $setting->currency_icon }}</span>
                <input type="text" class="form-control" name="shipping_fee" autocomplete="off" value="{{ $shipping->shipping_fee }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <button class="btn btn-primary">{{__('admin.Save')}}</button>
        </div>
    </div>
</form>


<script>
(function($) {
    "use strict";
    $(document).ready(function () {
        $("#edit_type_id").on("change", function(){
            if($("#edit_type_id").val() == 'base_on_price'){
                $(".edit_type_class").html('{{ $setting->currency_icon }}');
            }else if($("#edit_type_id").val() == 'base_on_weight'){
                $(".edit_type_class").html('g');
            }else if($("#edit_type_id").val() == 'base_on_qty'){
                $(".edit_type_class").html('qty');
            }
        })
    });
})(jQuery);

</script>
