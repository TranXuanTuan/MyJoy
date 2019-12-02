<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\AlbumCategory;
use App\Model\Album;
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
        $albums = Album::all();
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
        return view('admin.albums.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        if ($request->hasFile('thumb')) {
            $ext = $request->file('thumb')->getClientOriginalExtension();
            $this->album->thumb = $request->file('thumb')->storeAs(
                'public/albums_images', time() . '.' . $ext
            );
        }
        $this->validate($request, [
            'category_id' => 'required',
            'artist_name' => 'required|max:100',
            'intro' => 'required|max:100',
            ]);
        $category_id = $request['category_id'];
        $artist_name = $request['artist_name'];
        $intro = $request['intro'];
        $avatar = $request['avatar'];

        $artist = Artist::create($request->only('category_id','artist_name','intro','avatar'));
        return redirect()->route('admin_artists.index')
                ->with('flash_message','Artist successfully added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect('admin/admin_albumcategories'); 

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $albumCategory = AlbumCategory::findOrFail($id);
        return view('admin.admin_albumcategories.edit', compact('albumCategory'));
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
        $albumCategory = AlbumCategory::findOrFail($id);
        $albumCategory->category_name = $request['category_name'];
        
        $albumCategory->save();

        return redirect()->route('admin_albumcategories.index', 
            $albumCategory->id)->with('flash_message','Album successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $albumCategory = AlbumCategory::findOrFail($id);
        $albumCategory->delete();

        return redirect()->route('admin_albumcategories.index')
            ->with('flash_message',
             'Album successfully deleted');
    }
}
