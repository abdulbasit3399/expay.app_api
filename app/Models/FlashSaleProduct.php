<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FlashSaleProduct extends Model
{
    use HasFactory;
    protected $casts = [
        'status' => 'string',
        'product_id' => 'string',
    ];
    public function product(){
        return $this->belongsTo(Product::class);
    }
}
