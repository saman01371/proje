<?php

namespace App\Http\Controllers\Admin\Market;

use App\Http\Controllers\Controller;
use App\Models\Market\Product;
use App\Models\Market\ProductColor;
use Illuminate\Http\Request;

class ProductColorController extends Controller
{
    public function index(Product $product)
    {
        return view('admin.market.product.color.index', compact('product'));
    }

    public function create(Product $product)
    {
        return view('admin.market.product.color.create', compact('product'));
    }
    public function store(Request $request, Product $product)
    {
        $validated = $request->validate([
            'color_name' => 'required|max:120|min:2|regex:/^[ا-یa-zA-Z0-9\-۰-۹ء-ي., ]+$/u',
            'color' => 'required|max:120',
            'price_increase' => 'required|numeric',
        ]);
        $inputs = $request->all();
        $inputs['product_id'] = $product->id;
        $color = ProductColor::create($inputs);
        return redirect()->route('admin.market.color.index', $product->id)->with('swal-success', 'رنگ شما با موفقیت ثبت شد');
    }


    public function destroy(Product $product, ProductColor $color)
    {
        $result = $color->delete();
        return redirect()->route('admin.market.color.index',$product->id)->with('swal-success', 'رنگ شما با موفقیت حذف شد');
    }
}
