<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Admin\TopicCreateRequest;
use App\Http\Requests\Admin\TopicUpdateRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Topic;
use Auth;
use Session;

class AdminTopicController extends Controller
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
        $topics = Topic::all();
        return view('admin.admin_topics.index', compact('topics'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.admin_topics.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TopicCreateRequest $request)
    {
        if ($request->hasFile('picture')) {
            $ext = $request->file('picture')->getClientOriginalExtension();
            $this->topic->picture = $request->file('picture')->storeAs(
                'public/topic_images', time() . '.' . $ext
            );
        }
        
        $topic_name = $request['topic_name'];
        $picture = $request['picture'];

        $topic = Topic::create($request->only('topic_name', 'picture'));
        return redirect()->route('admin_topics.index')
                ->with('flash_message','Topic successfully added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect('admin/admin_topics'); 

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $topic = Topic::findOrFail($id);
        return view('admin.admin_topics.edit', compact('topic'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(TopicUpdateRequest $request, $id)
    {
        $topic = Topic::findOrFail($id);
        $topic->topic_name = $request['topic_name'];
        $topic->picture = $request['picture'];
        $topic->save();

        return redirect()->route('admin_topics.index', 
            $topic->id)->with('flash_message','Topic successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $topic = Topic::findOrFail($id);
        $topic->delete();

        return redirect()->route('admin_topics.index')
            ->with('flash_message',
             'Article successfully deleted');
    }
}
