<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Album;
use App\Model\AlbumCategory;
use Auth;
use Session;

class AlbumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $album_categories = AlbumCategory::all();
        $albums = Album::paginate(12);
        return view('albums.index', compact('albums','album_categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show($category_id)
    {
        $album_categories= Album::where('category_id', $category_id)->get();
        return view('albums.show', compact('album_categories'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function detail($id)
    {
        $album= Album::findorfail($id);
        return view('albums.detail', compact('album'));
    }

}
