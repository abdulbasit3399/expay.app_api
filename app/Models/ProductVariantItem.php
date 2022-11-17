<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductVariantItem extends Model
{
    use HasFactory;
    protected $casts = [
        'price' => 'string',
        'product_variant_id' => 'string',
        'product_id' => 'string',
        'status' => 'string',
    ];
    public function product(){
        return $this->belongsTo(Product::class);
    }

    public function variant(){
        return $this->belongsTo(ProductVariant::class,'product_variant_id');
    }

}
