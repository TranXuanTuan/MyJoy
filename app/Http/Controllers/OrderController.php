<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Receipt;
use App\Model\Product;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    protected $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($beat_id, Request $request)
    {
        $orders = [];
        if ($request->session()->has('orders') == true) {
            $orders = session('orders');
        }

        // check $id if exist then show error
        if (in_array($beat_id, $orders))
            return redirect()->back()->with('error', 'This Beat was exist in cart.');

        // OK then add data
        $orders[] =  $beat_id;
        // update session
        session(['orders' => $orders]);

        return redirect()->back()->with('success', 'Add Beat to Cart successful.');
    }

    public function cart(Request $request)
    {
        $data = [];
        $orders = [];
        if ($request->session()->has('orders') == true) {
            $orders = session('orders');
        }

        if (!empty($orders)) {
            $products = $this->product->whereIn('id', $orders)->get();
            $data['products'] = $products;
        }
        return view('orders.cart', $data);
    }

    public function cancel(Request $request, $id)
    {
        $data = [];
        $orders = [];
        if ($request->session()->has('orders') == true) {
            $orders = session('orders');
        }

        if (!empty($orders)) {
            // delete $id in $orders
            $key = array_search ($id, $orders);
            unset($orders[$key]);

            // update session
            session(['orders' => $orders]);
            $beats = $this->beat->whereIn('id', $orders)->get();
            $data['beats'] = $beats;
        }

        return redirect()->back()->with('success', 'Remove this order leave cart successful.');
    }

    public function complete(Request $request, $id)
    {
        $data = [];
        $orders = [];
        if ($request->session()->has('orders') == true) {
            $orders = session('orders');
        }
        if (!empty($orders)) {
            // delete $id in $orders
            $key = array_search ($id, $orders);
            unset($orders[$key]);

            // update session
            session(['orders' => $orders]);
            $beats = $this->beat->whereIn('id', $orders)->get();
            $data['beats'] = $beats;
        }
        $receipt = new Receipt;
        $receipt->beat_id= $request->id;
        $receipt->user_id= $request->id;
        $receipt->save();
        return redirect()->back()->with('success', 'Pay successful.');
    }
}
