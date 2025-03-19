<?php

namespace App\Models\Market;

use App\Models\Market\CategoryAttribute;
use App\Models\Market\CategoryValue;
use Illuminate\Database\Eloquent\Model;

class OrderItemSelectedAttribute extends Model
{
    public function categoryAttribute()
    {
        return $this->belongsTo(CategoryAttribute::class);
    }

    public function categoryAttributeValue()
    {
        return $this->belongsTo(CategoryValue::class, 'category_value_id');
    }
}
