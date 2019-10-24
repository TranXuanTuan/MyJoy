<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Artist;
use App\Model\ArtistCategory;
use App\Model\Song;

class ArtistController extends Controller
{
    public function index()
    {
    	$artist_categories = ArtistCategory::all();
        $artists = Artist::paginate(12);
        return view('artists.index', compact('artists','artist_categories'));
    }

    public function show($category_id)
    {
        $artist_categories = Artist::where('category_id',$category_id)->get();
        return view('artists.show', compact('artist_categories'));
    }

    public function detail($artist_id)
    {
        $artist = Artist::findorfail($artist_id);
        $songs = Song::where('artist_id',$artist_id)->get();
        return view('artists.detail', compact('artist','songs'));
    }
}
