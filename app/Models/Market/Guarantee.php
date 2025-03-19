<?php

namespace App\Models\Market;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Market\Product;

class Guarantee extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'name',
        'product_id',
        'price_increase',
        'status'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
