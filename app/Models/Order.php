<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $casts = [
        'order_id' => 'string',
        'user_id' => 'string',
        'total_amount' => 'string',
        'product_qty' => 'string',
        'payment_method' => 'string',
        'payment_status' => 'string',
        'payment_approval_date' => 'string',
        'transection_id' => 'string',
        'shipping_method' => 'string',
        'shipping_cost' => 'string',
        'tracking' => 'string',
        'coupon_coast' => 'string',
        'order_status' => 'string',
        'order_approval_date' => 'string',
        'order_delivered_date' => 'string',
        'order_completed_date' => 'string',
        'order_declined_date' => 'string',
        'cash_on_delivery' => 'string',
        'additional_info' => 'string',
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function orderProducts(){
        return $this->hasMany(OrderProduct::class);
    }

    public function orderAddress(){
        return $this->hasOne(OrderAddress::class);
    }
}
