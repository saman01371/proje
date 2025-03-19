<?php

namespace App\Models\Market;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Market\Product;

class ProductMeta extends Model
{
    protected $table = 'product_meta';
    use  SoftDeletes;


    protected $fillable = ['meta_key', 'meta_value', 'product_id'];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
