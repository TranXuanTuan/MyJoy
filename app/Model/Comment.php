<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function blog()
    {
    	return $this->belongsTo('App\Model\Blog');
    }
}
