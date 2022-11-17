<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShoppingCartVariant extends Model
{
    use HasFactory;
    protected $casts = [
        'shopping_cart_id' => 'string',
        'variant_id' => 'string',
        'variant_item_id' => 'string',
    ];

    public function variantItem(){
        return $this->belongsTo(ProductVariantItem::class,'variant_item_id')->select(['id','product_variant_name','name','price']);
    }
}
