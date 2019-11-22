<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function song()
    {
    	return $this->belongsTo('App\Model\Song');
    }

    public function blog()
    {
    	return $this->belongsTo('App\Model\Blog');
    }
}
