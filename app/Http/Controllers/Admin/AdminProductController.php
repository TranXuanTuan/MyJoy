<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\ProductCategory;
use App\Model\Product;
use Auth;
use Session;

class AdminProductController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'isAdmin']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::paginate(3);
        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = ProductCategory::all();
        return view('admin.products.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasFile('picture')) {
            $ext = $request->file('picture')->getClientOriginalExtension();
            $this->product->picture = $request->file('picture')->storeAs(
                'public/product_images', time() . '.' . $ext
            );
        }
        $this->validate($request, [
            'category_id' => 'required',
            'unit' => 'required',
            'description' => 'required|max:300',
            'name_product' => 'required|max:100',
            'price' => 'required',
            ]);
        $category_id = $request['category_id'];
        $unit = $request['unit'];
        $description = $request['description'];
        $name_product = $request['name_product'];
        $price = $request['price'];
        $picture = $request['picture'];

        $product = Product::create($request->only('category_id', 'unit', 'description', 'name_product', 'price', 'picture'));
        return redirect()->route('admin_products.index')
                ->with('flash_message','Product successfully added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect('admin/products.index'); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::findOrFail($id);
        $categories = ProductCategory::all();
        return view('admin.products.edit', compact('product','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->category_id = $request['category_id'];
        $product->unit = $request['unit'];
        $product->description = $request['description'];
        $product->price = $request['price'];
        $product->name_product = $request['name_product'];
        $product->picture = $request['picture'];
        $product->save();

        return redirect()->route('admin_products.index', 
            $product->id)->with('flash_message','Product successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $productCategory->delete();

        return redirect()->route('admin_products.index')
            ->with('flash_message',
             'Product successfully deleted');
    }
}
