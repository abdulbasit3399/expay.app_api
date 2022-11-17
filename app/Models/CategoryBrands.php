<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryBrands extends Model
{
    use HasFactory;
    protected $table = 'category_brands';

    public function brands()
    {
        return $this->hasOne(Brand::class,'id','brand_id');
    }
}
