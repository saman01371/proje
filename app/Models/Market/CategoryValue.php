<?php

namespace App\Models\Market;

use App\Models\Market\CategoryAttribute;
use App\Models\Market\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CategoryValue extends Model
{
    use SoftDeletes;
    protected $fillable = ['product_id', 'category_attribute_id', 'value', 'type'];


    public function attribute()
    {
        return $this->belongsTo(CategoryAttribute::class, 'category_attribute_id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
