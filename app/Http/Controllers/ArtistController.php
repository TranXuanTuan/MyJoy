<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Artist;
use App\Model\ArtistCategory;

class ArtistController extends Controller
{
    public function index()
    {
    	$artist_categories = ArtistCategory::all();
        $artists = Artist::all();
        return view('artists.index', compact('artists','artist_categories'));
    }

    public function show($id)
    {
        //
    }
}
