<?php

namespace App\Http\Controllers\Admin;
use App\Model\Blog;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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
        $news = Blog::orderby('id', 'desc')->paginate(2);
        return view('admin.admin_news.index',compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.admin_news.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|max:100',
            'description' => 'required|max:300',
            'content' => 'required',
            ]);
        $title = $request['title'];
        $description = $request['description'];
        $content = $request['content'];

        $new = Blog::create($request->only('title', 'description', 'content'));
        return redirect()->route('admin_news.index')
                ->with('flash_message', 'Article,'. $new->title.'created');


    }

    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $new = Blog::findOrFail($id);
        return view('admin.admin_news.edit', compact('new'));
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
        $this->validate($request, [
            'title'=>'required|max:100',
            'description'=>'required|max:300',
            'content' =>'required',
        ]);

        $new = Blog::findOrFail($id);
        $new->title = $request->input('title');
        $new->description = $request->input('description');
        $new->content = $request->input('content');
        $new->save();

        return redirect()->route('admin_news.edit', 
            $new->id)->with('flash_message', 
            'Article, '. $new->title.' updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $new = Blog::findOrFail($id);
        $new->delete();

        return redirect()->route('admin_news.index')
            ->with('flash_message',
             'Article successfully deleted');
    }
}
