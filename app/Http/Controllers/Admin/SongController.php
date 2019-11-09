<?php

namespace App\Http\Controllers\Admin;
use App\Model\Song;
use App\Model\SongCategory;
use App\Model\Artist;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SongController extends Controller
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
        $songs = Song::orderby('id', 'desc')->paginate(2);
        return view('admin.songs.index',compact('songs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $songcategories = SongCategory::all();
        $artist = Artist::all();
        return view('admin.songs.create',compact('songcategories','artist'));
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasFile('picture')) {
            $ext = $request->file('picture')->getClientOriginalExtension();
            $this->song->picture = $request->file('picture')->storeAs(
                'public/song_images', time() . '.' . $ext
            );
        }

        $songs = new Song();
        $songs ->song_name = $request->song_name;
        $songs ->picture = $request->picture;
        $songs ->artist_id = $request->artist_id;
        $songs ->category_id = $request->category_id;
        $songs ->artist_name = $request->artist_name;
        $songs ->link = $request->link;
        
        $songs->save();
        return redirect()->route('songs.index') 
            ->with('flash_message', 'Song
             '. $songs->song_name.' created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $song = Song::find($id);
        $artist = Artist::all();
        $songcategories = SongCategory::all();
        return view('admin.songs.edit',compact('song', 'artist', 'songcategories'));
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
        // $this->validate($request, [
        //     'song_name'=>'required|max:100',
        //     'picture'=>'required',
        //     'artist_id'=>'required',
        //     'category_id'=>'required',
        //     'artist_name'=>'required',
          
        // ]);

        $song = Song::findOrFail($id);
        $song->song_name = $request->song_name;
        $song->picture = $request->picture;
        $song->artist_id = $request->artist_id;
        $song->category_id = $request->category_id;
        $song->artist_name = $request->artist_name;
        $song->link = $request->link;
        $song->save();

        return redirect()->route('songs.index', 
            $song->id)->with('flash_message', 
            'Song '. $song->song_name.' updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $song = Song::findOrFail($id);
        $song->delete();

        return redirect()->route('songs.index')
            ->with('flash_message',
             'Song successfully deleted');
    }
}
