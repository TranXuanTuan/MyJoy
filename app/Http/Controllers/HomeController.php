<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Blog;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function search(Request $request)
    {
        $key = $request->key;
        $blogs = Blog::where('title','like',"%$key%")
        ->orWhere('description','like',"%$key%")
        ->orWhere('content','like',"%$key%")
        ->take(10)->paginate(3);
        return view('searchs.index',['blogs'=>$blogs,'key'=>$key]);
    }
}
