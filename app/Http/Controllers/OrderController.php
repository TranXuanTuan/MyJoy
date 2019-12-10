<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Receipt;
use App\Model\ReceiptDetail;
use App\Model\Product;
use App\Model\Cart;
use Illuminate\Http\Request;
use Session;
use Auth;


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

    public function getDelItemCart($id)
    {
        //kiem tra trong gio hang co hay khong
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)>0){
            Session::put('cart',$cart);
        }
        else{
           Session::forget('cart'); 
        }
        return redirect()->back();

    }

    public function getCheckOut()
    {
        return view ('orders.checkout');
    }

    public function postCheckOut(Request $request)
    {
        $cart= Session::get('cart');
        $user = Auth::user();

        $receipt = new Receipt;
        $receipt->user_id = Auth::id();
        $receipt->date_buy = date('Y-m-d');
        $receipt->total = $cart->totalPrice;
        $receipt->payment = $request->payment;
        $receipt->note = $request->note;
        $receipt->save();

        foreach ($cart->items as $key => $value) {
            $receipt_detail= new ReceiptDetail;
            $receipt_detail->receipt_id = $receipt->id;
            $receipt_detail->product_id = $key;
            $receipt_detail->quantity = $value['qty'];
            $receipt_detail->price = ($value['price']/$value['qty']);
            $receipt_detail->save();
        }

        Session::forget('cart');
        return redirect()->back()->with('flash_message','Đặt hàng thành công');
    }
    
}
