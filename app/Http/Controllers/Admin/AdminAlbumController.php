<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\AlbumCategory;
use App\Model\Album;
use App\Model\Artist;
use App\Http\Requests\Admin\AlbumCreateRequest;
use App\Http\Requests\Admin\AlbumUpdateRequest;
use Auth;
use Session;

class AdminAlbumController extends Controller
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
        $albums = Album::orderby('id','desc')->paginate(3);
        return view('admin.albums.index', compact('albums'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = AlbumCategory::all();
        $artists = Artist::all();
        return view('admin.albums.create',compact('categories','artists'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AlbumCreateRequest $request)
    {
        
        if ($request->hasFile('thumb')) {
            $ext = $request->file('thumb')->getClientOriginalExtension();
            $this->album->thumb = $request->file('thumb')->storeAs(
                'public/albums_images', time() . '.' . $ext
            );
        }
        
        $category_id = $request['category_id'];
        $artist_id = $request['artist_id'];
        $thumb = $request['thumb'];
        $album_name = $request['album_name'];

        $album = Album::create($request->only('category_id','artist_id','thumb','album_name'));
        return redirect()->route('admin_albums.index')
                ->with('flash_message','Album successfully added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect('admin/albums'); 

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $album = Album::findOrFail($id);
        $artists = Artist::all();
        $categories = AlbumCategory::all();
        return view('admin.albums.edit', compact('album','categories','artists'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function update(AlbumUpdateRequest $request, $id)
    {
        $album = Album::findOrFail($id);
        $album->category_id = $request['category_id'];
        $album->artist_id = $request['artist_id'];
        $album->album_name = $request['album_name'];
        $album->thumb = $request['thumb'];
        $album->save();

        return redirect()->route('admin_albums.index', 
            $album->id)->with('flash_message','Album successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $album = Album::findOrFail($id);
        $album->delete();

        return redirect()->route('admin_albums.index')
            ->with('flash_message',
             'Album successfully deleted');
    }
}
