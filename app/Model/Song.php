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

    public function playlist()
    {
    	return $this->belongsTo('App\Model\Playlist');
    }
}
