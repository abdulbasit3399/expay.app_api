<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shipping extends Model
{   
    protected $casts = [
        'city_id' => 'string',
        'shipping_rule' => 'string',
        'shipping_rule_ar' => 'string',
        'type' => 'string',
        'shipping_fee' => 'string',
        'condition_from' => 'string',
        'condition_to' => 'string',
    ];
    use HasFactory;

    public function city(){
        return $this->belongsTo(City::class);
    }
}
