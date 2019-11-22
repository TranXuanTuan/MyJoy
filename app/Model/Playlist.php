<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Playlist extends Model
{
    public function playlistsongs()
    {
    	return $this->belongsTo('App\Model\PlaylistSong');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
