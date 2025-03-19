<?php

namespace App\Http\Controllers\Admin\Market;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Market\ProductRequest;
use App\Http\Services\Image\ImageService;
use App\Models\Market\Brand;
use App\Models\Market\Product;
use App\Models\Market\ProductCategory;
use App\Models\Market\ProductMeta;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = auth()->user();
        if ($user->can('index-product')) {
            $products = Product::orderBy('created_at', 'desc')->simplePaginate(15);
            return view('admin.market.product.index', compact('products'));
        } else {
            abort(403);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user = auth()->user();
        if ($user->can('create-product')) {
            $brands = Brand::all();
            $productCategories = ProductCategory::all();
            return view('admin.market.product.create', compact('brands', 'productCategories'));
        } else {
            abort(403);
        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request, ImageService $imageService)
    {
        $user = auth()->user();
        if ($user->can('create-product')) {

            $inputs = $request->all();

            //date fixed
            $realTimestampStart = substr($request->published_at, 0, 10);
            $inputs['published_at'] = date("Y-m-d H:i:s", (int)$realTimestampStart);
            $inputs['slug'] = str_replace(' ', '-', $inputs['name']) . '-' . Str::random(5);

            if ($request->hasFile('image')) {
                $imageService->setExclusiveDirectory('images' . DIRECTORY_SEPARATOR . 'product');
                $result = $imageService->createIndexAndSave($request->file('image'));
                if ($result === false) {
                    return redirect()->route('admin.market.product.index')->with('swal-error', 'آپلود تصویر با خطا مواجه شد');
                }
                $inputs['image'] = $result;
            }

            DB::transaction(function () use ($request, $inputs) {

                $product = Product::create($inputs);
                $metas = array_combine($request->meta_key, $request->meta_value);
                if ($request->meta_value[0] != null){

                    foreach ($metas as $key => $value) {
                        $meta = ProductMeta::create([
                            'meta_key' => $key,
                            'meta_value' => $value,
                            'product_id' => $product->id
                        ]);
                    }
            }
            });

            return redirect()->route('admin.market.product.index')->with('swal-success', 'محصول  جدید شما با موفقیت ثبت شد');

        } else {
            abort(403);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $user = auth()->user();
        //dd($user->hasRole('admin'));
        if ($user->can('edit-product') || ($user->hasRole('admin'))) {
            $productCategories = ProductCategory::all();
            $brands = Brand::all();
            return view('admin.market.product.edit', compact('product', 'productCategories', 'brands'));
        } else {
            abort(403);
        }
    }


    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product, ImageService $imageService)
    {
        $user = auth()->user();
        if ($user->can('edit-product') || ($user->hasRole('admin'))) {
            $inputs = $request->all();
            //date fixed
            $realTimestampStart = substr($request->published_at, 0, 10);
            $inputs['published_at'] = date("Y-m-d H:i:s", (int)$realTimestampStart);

            if ($request->hasFile('image')) {
                if (!empty($product->image)) {
                    $imageService->deleteDirectoryAndFiles($product->image['directory']);
                }
                $imageService->setExclusiveDirectory('images' . DIRECTORY_SEPARATOR . 'product');
                $result = $imageService->createIndexAndSave($request->file('image'));
                if ($result === false) {
                    return redirect()->route('admin.market.product.index')->with('swal-error', 'آپلود تصویر با خطا مواجه شد');
                }
                $inputs['image'] = $result;
            } else {
                if (isset($inputs['currentImage']) && !empty($product->image)) {
                    $image = $product->image;
                    $image['currentImage'] = $inputs['currentImage'];
                    $inputs['image'] = $image;
                }
            }

            DB::transaction(function () use ($request, $inputs, $product) {
                $product->update($inputs);
                $meta_keys = $request->meta_key;
                $meta_values = $request->meta_value;
                $meta_ids = array_keys($request->meta_key);
                $metas = array_map(function ($meta_id, $meta_key, $meta_value) {
                    return array_combine(
                        ['meta_id', 'meta_key', 'meta_value'],
                        [$meta_id, $meta_key, $meta_value]
                    );
                }, $meta_ids, $meta_keys, $meta_values);
                foreach ($metas as $meta) {
                    ProductMeta::where('id', $meta['meta_id'])->update(
                        ['meta_key' => $meta['meta_key'], 'meta_value' => $meta['meta_value']]
                    );
                }
            });

            return redirect()->route('admin.market.product.index')->with('swal-success', 'محصول  شما با موفقیت ویرایش شد');
        } else {
            abort(403);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {

        $user = auth()->user();
        if ($user->can('delete-product') || ($user->hasRole('admin'))) {
            $result = $product->delete();
            return redirect()->route('admin.market.product.index')->with('swal-success', 'محصول شما با موفقیت حذف شد');
        } else {
            abort(403);
        }
    }
}
