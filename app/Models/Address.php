<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;

    protected $casts = [
        'user_id' => 'string',
        'name' => 'string',
        'email' => 'string',
        'phone' => 'string',
        'country_id' => 'string',
        'state_id' => 'string',
        'city_id' => 'string',
        'address' => 'string',
        'type' => 'string',
        'default_shipping' => 'string',
        'default_billing' => 'string',
    ];

    public function country(){
        return $this->belongsTo(Country::class)->select('id','name','code');
    }

    public function countryState(){
        return $this->belongsTo(CountryState::class,'state_id')->select('id','name');
    }

    public function city(){
        return $this->belongsTo(City::class)->select('id','name');
    }
}
