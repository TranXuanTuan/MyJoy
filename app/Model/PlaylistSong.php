<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class PlaylistSong extends Model
{
    public function song()
    {
    	return $this->belongsTo('App\Model\Song');
    }

    public function playlists()
    {
    	return $this->hasMany('App\Model\Playlist');
    }
}
