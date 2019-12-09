<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Receipt;
use App\Model\Product;
use App\Model\Cart;
use Illuminate\Http\Request;
use Session;

class OrderController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getAddtoCart(Request $request,$id)
    {
        $product = Product::find($id);
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->add($product, $id);
        $request->session()->put('cart',$cart);

        return redirect()->back();
    }

    
}
