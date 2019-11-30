<?php

namespace App\Http\Controllers\Admin;
use App\Model\Event;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;


class AdminEventController extends Controller
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
        $events = Event::orderby('id', 'desc')->paginate(3);
        return view('admin.admin_events.index',compact('events'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::all();
        return view('admin.admin_events.create',compact('users'));
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
            $this->event->image = $request->file('image')->storeAs(
                'public/event_images', time() . '.' . $ext
            );
        }
        $this->validate($request, [
            'title' => 'required|max:100',
            'event_place' => 'required|max:300',
            'event_date'  => 'required',
            'content' => 'required',
            'author'=>'required',    
            ]);
        $title = $request['title'];
        $event_place = $request['event_place'];
        $event_date = $request['event_date'];
        $content = $request['content'];
        $user_id = $request['user_id'];
        $author = $request['author'];
        $image = $request['image'];

        $event = Event::create($request->only('title', 'event_place', 'event_date','content','user_id','author','image'));
        return redirect()->route('admin_events.index')
                ->with('flash_message','Event successfully added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect('admin/admin_events'); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   
        $event = Event::findOrFail($id);
        $users = User::all();
        return view('admin.admin_events.edit', compact('event','users'));
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
        
        $event = Event::findOrFail($id);
        $event->title = $request['title'];
        $event->event_place = $request['event_place'];
        $event->event_date = $request['event_date'];
        $event->content = $request['content'];
        $event->user_id = $request['user_id'];
        $event->author = $request['author'];
        $event->image = $request['image'];
        $event->save();

        return redirect()->route('admin_events.index', 
            $event->id)->with('flash_message','Event successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    { 
        $event = Event::findOrFail($id);
        $event->delete();
        return redirect()->route('admin_events.index')
            ->with('flash_message',
             'Article successfully deleted');
    }
}
