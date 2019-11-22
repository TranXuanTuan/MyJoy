<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    public function songcategory()
    {
    	return $this->belongsTo('App\Model\SongCategory');
    }

    public function comments()
    {
    	return $this->hasMany('App\Model\Comment');
    }

    public function artist()
    {
    	return $this->belongsTo('App\Model\Artist');
    }

    public function album()
    {
    	return $this->belongsTo('App\Model\Album');
    }

    public function playlist_songs()
    {
    	return $this->hasMany('App\Model\PlaylistSong');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
