<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    use HasFactory;
    protected $casts = [
        'qty' => 'string',
    ];

    public function product(){
        return $this->belongsTo(Product::class)->select('id','name','name_ar', 'short_name', 'short_name_ar', 'slug', 'thumb_image','qty','sold_qty', 'price', 'offer_price');
    }
}
