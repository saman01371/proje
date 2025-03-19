<?php

namespace App\Models\Market;

use App\Models\Market\CategoryValue;
use App\Models\Market\ProductCategory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class CategoryAttribute extends Model
{
    use SoftDeletes;
    protected $fillable = ['name', 'type', 'unit', 'category_id'];


    public function category()
    {
        return $this->belongsTo(ProductCategory::class);
    }

    public function values()
    {
        return $this->hasMany(CategoryValue::class);
    }
}
