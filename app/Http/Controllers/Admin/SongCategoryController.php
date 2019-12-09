<?php

namespace App\Http\Controllers\Admin;
use App\Model\SongCategory;
use App\Model\Topic;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\SongCategoryCreateRequest;
use App\Http\Requests\Admin\SongCategoryUpdateRequest;

class SongCategoryController extends Controller
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
        $categories = SongCategory::all();
        return view('admin.songcategories.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $topics = Topic::all();
        return view('admin.songcategories.create',compact('topics'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SongCategoryCreateRequest $request)
    {
        $topic_id = $request['topic_id'];
        $category_name = $request['category_name'];

        $songCategory = SongCategory::create($request->only('topic_id', 'category_name'));
        return redirect()->route('songcategories.index')
                ->with('flash_message','Song Category successfully added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = SongCategory::findOrFail($id);
        $topics = Topic::all();
        return view('admin.songcategories.edit', compact('category','topics'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SongCategoryUpdateRequest $request, $id)
    {
        $category = SongCategory::findOrFail($id);
        $category->topic_id = $request['topic_id'];
        $category->category_name = $request['category_name'];
        $category->save();

        return redirect()->route('songcategories.index', 
            $category->id)->with('flash_message','Category successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = SongCategory::findOrFail($id);
        $category->delete();

        return redirect()->route('songcategories.index')
            ->with('flash_message',
             'Song successfully deleted');
    }
}
