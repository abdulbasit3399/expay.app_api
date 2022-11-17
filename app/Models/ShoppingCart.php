<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShoppingCart extends Model
{
    use HasFactory;

    protected $casts = [
        'user_id' => 'string',
        'product_id' => 'string',
        'qty' => 'string',
        'coupon_name' => 'string',
        'coupon_price' => 'string',
        'offer_type' => 'string',
    ];
    public function variants(){
        return $this->hasMany(ShoppingCartVariant::class, 'shopping_cart_id');
    }

    public function product(){
        return $this->belongsTo(Product::class)->select(['id','name','name_ar','short_name','short_name_ar','price','offer_price','thumb_image','slug','weight']);
    }


}
