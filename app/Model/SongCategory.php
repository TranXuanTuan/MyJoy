<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class SongCategory extends Model
{
    public function subject()
    {
    	return $this->belongsTo('App\Model\Subject');
    }

    public function songs()
    {
    	return $this->hasMany('App\Model\Song');
    }
}
