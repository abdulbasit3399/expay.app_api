<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    protected $casts = [
        'status' => 'string',
        'name' => 'string',
        'name_ar' => 'string',
        'code' => 'string',
        'offer_type' => 'string',
        'discount' => 'string',
        'max_quantity' => 'string',
        'expired_date' => 'string',
        'apply_qty' => 'string',
    ];
    use HasFactory;
}
