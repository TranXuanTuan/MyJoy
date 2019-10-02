<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Playlist extends Model
{
    public function songs()
    {
    	return $this->hasMany('App\Model\Song');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
