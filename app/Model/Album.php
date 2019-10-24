<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    public function artist()
    {
    	return $this->belongsTo('App\Model\Artist');
    }

    public function albumcategory()
    {
    	return $this->belongsTo('App\Model\AlbumCategory');
    }

    public function songs()
    {
        return $this->hasManyThrough(
            'App\Model\Song','App\Model\Artist','id' ,'artist_id','id'
        );
    }
}
