<?php

namespace App\Http\Controllers;

use App\Model\Comment;
use App\Model\Blog;
use Auth;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function postComment(Request $request,$id)
    {
    	$blog_id = $id;
    	$blog = Blog::find($id);
    	$comment = new Comment;
    	$comment->blog_id = $blog_id;
    	$comment->user_id = Auth::user()->id;
    	$comment->comment = $request->comment;
    	$comment->save();

    	return redirect('blogs/$id/')->with('flash_message','Bình
    		 luận thành công');
    }
}
