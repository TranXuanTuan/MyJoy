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
}
