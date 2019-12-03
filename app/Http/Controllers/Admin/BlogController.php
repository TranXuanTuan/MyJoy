<?php

namespace App\Http\Controllers\Admin;
use App\Model\Blog;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class BlogController extends Controller
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
        $blogs = Blog::orderby('id', 'desc')->paginate(3);
        return view('admin.admin_blogs.index',compact('blogs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::all();
        return view('admin.admin_blogs.create',compact('users'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasFile('image')) {
            $ext = $request->file('image')->getClientOriginalExtension();
            $this->blog->image = $request->file('image')->storeAs(
                'public/blog_images', time() . '.' . $ext
            );
        }
        $this->validate($request, [
            'title' => 'required|max:100',
            'description' => 'required|max:300',
            'content' => 'required',
            ]);
        $title = $request['title'];
        $description = $request['description'];
        $content = $request['content'];
        $user_id = $request['user_id'];
        $author = $request['author'];
        $image = $request['image'];

        $blog = Blog::create($request->only('title', 'description', 'content','user_id','author','image'));
        return redirect()->route('admin_blogs.index')
                ->with('flash_message','Blog successfully added.');
    }
    public function show($id)
    {
        $blog = Blog::findOrFail($id);
        $users = User::all();
        return view('admin.admin_blogs.show', compact('blog','users')); 
    }
    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $blog = Blog::findOrFail($id);
        $users = User::all();
        return view('admin.admin_blogs.edit', compact('blog','users'));
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
        $blog = Blog::findOrFail($id);
        $blog->title = $request['title'];
        $blog->description = $request['description'];
        $blog->content = $request['content'];
        $blog->user_id = $request['user_id'];
        $blog->author = $request['author'];
        $blog->image = $request['image'];
        $blog->save();

        return redirect()->route('admin_blogs.index', 
            $blog->id)->with('flash_message','Blog successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog = Blog::findOrFail($id);
        $blog->delete();

        return redirect()->route('admin_blogs.index')
            ->with('flash_message',
             'Article successfully deleted');
    }
}
