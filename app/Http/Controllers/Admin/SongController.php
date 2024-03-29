<?php

namespace App\Http\Controllers\Admin;
use App\Model\Song;
use App\Model\SongCategory;
use App\Model\Artist;
use App\Model\Album;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\SongCreateRequest;
use App\Http\Requests\Admin\SongUpdateRequest;

class SongController extends Controller
{
    protected $song;

    public function __construct(Song $song)
    {
        $this->middleware(['auth', 'isAdmin']);
        $this->song = $song;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $songs = $this->song;

        // search with song name
        $search_song_name = null;
        if ($request->search_song_name) {
            $search_song_name = $request->search_song_name;
            $songs = $songs->where('song_name', 'like', '%' . $search_song_name . '%');
        }
        $data['search_song_name'] = $search_song_name;

        $songs = $songs
            ->orderBy('id', 'desc')
            ->paginate(5);
        $data['songs'] = $songs;

        return view('admin.songs.index',$data);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $song = Song::find($id);
        $artist = Artist::all();
        $album = Album::all();
        $songcategories = SongCategory::all();
        return view('admin.songs.show', compact('song','artist','album','songcategories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = SongCategory::all();
        $artist = Artist::all();
        $album = Album::all();
        return view('admin.songs.create',compact('categories','artist','album'));
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SongCreateRequest $request)
    {
        if ($request->hasFile('picture')) {
            $ext = $request->file('picture')->getClientOriginalExtension();
            $this->song->picture = $request->file('picture')->storeAs(
                'public/song_images', time() . '.' . $ext
            );
        }
        if ($request->hasFile('url')) {
            $ext = $request->file('url')->getClientOriginalExtension();
            $this->song->url = $request->file('url')->storeAs(
                'public/url', time() . '.' . $ext
            );
        }
        if ($request->hasFile('mv')) {
            $ext = $request->file('mv')->getClientOriginalExtension();
            $this->song->mv = $request->file('mv')->storeAs(
                'public/mv', time() . '.' . $ext
            );
        }

        $songs = new Song();
        $songs ->song_name = $request->song_name;
        $songs ->picture = $request->picture;
        $songs ->artist_id = $request->artist_id;
        $songs ->category_id = $request->category_id;
        $songs ->album_id = $request->album_id;
        $songs ->song_lyric = $request->song_lyric;
        $songs ->composer = $request->composer;
        $songs ->url = $request->url;
        $songs ->mv = $request->mv;
        
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
        $album = Album::all();
        $songcategories = SongCategory::all();
        return view('admin.songs.edit',compact('song', 'artist', 'songcategories','album'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SongUpdateRequest $request, $id)
    {
        $song = Song::findOrFail($id);
        $song ->song_name = $request->song_name;
        $song ->picture = $request->picture;
        $song ->artist_id = $request->artist_id;
        $song ->category_id = $request->category_id;
        $song ->album_id = $request->album_id;
        $song ->song_lyric = $request->song_lyric;
        $song ->composer = $request->composer;
        $song ->url = $request->url;
        $song ->mv = $request->mv;
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
