<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderProductVariant extends Model
{
    use HasFactory;
    protected $casts = [
        'product_id' => 'string',
        'order_product_id' => 'string'
    ];
}
