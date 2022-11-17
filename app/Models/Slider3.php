<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider3 extends Model
{
    use HasFactory;
    protected $table = 'sliders3';
    protected $casts = [
        'badge' => 'string',
        'title_one' => 'string',
        'title_two' => 'string',
        'badge_ar' => 'string',
        'title_one_ar' => 'string',
        'title_two_ar' => 'string',
        'image' => 'string',
        'status' => 'string',
        'serial' => 'string',
        'slider_location' => 'string',
        'brand_slug' => 'string',
        'brand_id' => 'string',
    ];
}
