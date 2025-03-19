<?php

namespace App\Models\Market;

use App\Models\Market\CategoryValue;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Market\Brand;
use App\Models\Market\ProductCategory;
use App\Models\Market\ProductColor;
use App\Models\Market\ProductMeta;
use App\Models\Market\Gallery;
use App\Models\Market\Guarantee;
use App\Models\Market\AmazingSale;

class Product extends Model
{
    use SoftDeletes;
    protected $casts = ['image' => 'array'];

    protected $fillable = ['name','view', 'introduction', 'slug', 'image', 'status', 'tags', 'weight', 'length', 'width', 'height', 'price', 'marketable', 'sold_number', 'frozen_number', 'marketable_number', 'brand_id', 'category_id', 'published_at'];

    public function category()
    {
        return $this->belongsTo(ProductCategory::class, 'category_id');
    }
    public function brand()
    {
        return $this->belongsTo(Brand::class, 'brand_id');
    }

    public function metas()
    {
        return $this->hasMany(ProductMeta::class);
    }

    public function colors()
    {
        return $this->hasMany(ProductColor::class);
    }

    public function images()
    {
        return $this->hasMany(Gallery::class);
    }

    public function values()
    {
        return $this->hasMany(CategoryValue::class);
    }
    public function comments()
    {
        return $this->morphMany('App\Models\Content\Comment', 'commentable');
    }

    public function guarantees()
    {
        return $this->hasMany(Guarantee::class);
    }

    public function amazingSales()
    {
        return $this->hasMany(AmazingSale::class);

    }

    public function activeAmazingSales()
    {
        return $this->amazingSales()->where('start_date', '<', Carbon::now())->where('end_date', '>', Carbon::now())->first();
    }


    public function activeComments()
    {
        return $this->comments()->where('approved', 1)->whereNull('parent_id')->get();
    }

    public function user()
    {
        return $this->belongsToMany(User::class);
    }

    public function compares()
    {
        return $this->belongsToMany(Compare::class);
    }

    public function ratings()
    {
        return $this->morphMany('App\Models\Market\Rating', 'rateable');
    }

    public function ratingsAvg()
    {

        $sum=0;
      //  $products=Product::find($id);
       // dd($this->ratings->count());
        if ($this->ratings->count()>0){

            foreach ($this->ratings as $product) {
                $sum = $sum + ($product->value);
            }

            $eve = $sum / ($this->ratings->count());
            return $eve;
        }
    }

    public function ratingsCountUser()
    {
        if ($this->ratings->where('model_id',auth()->user()->id)->count()>0) {
            return $this->ratings->where('model_id', auth()->user()->id)->first()->value;
        }

    }

    public function ratingsCount()
    {
        if ($this->ratings->count()>0) {
            return $this->ratings->count();
        }
    }

}
