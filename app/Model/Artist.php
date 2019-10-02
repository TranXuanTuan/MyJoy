<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Artist extends Model
{
    public function artistcategory()
    {
    	return $this->belongsTo('App\Model\ArtistCategory');
    }

    public function songs()
    {
    	return $this->hasMany('App\Model\Song');
    }

    public function albums()
    {
    	return $this->hasMany('App\Model\Album');
    }
}
