<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Model\Post;
use Auth;
use Session;
class PostController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderby('id', 'desc')->paginate(5);
        return view('posts.index', compact('posts'));
    }
}