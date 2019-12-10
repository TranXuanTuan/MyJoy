<?php

namespace App\Http\Controllers;

use App\Model\Comment
use Auth;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function postComment(Request $request,$id)
    {
    	$blog_id = $id;
    	$comment = new Comment;
    	$comment->blog_id = $blog_id;
    	$comment->user_id = Auth::user()->id;
    	$comment->comment = $request->comment;
    	$comment->save();

    	return redirect()->back()->with('flash_message','Bình
    		 luận thành công');
    }
}
