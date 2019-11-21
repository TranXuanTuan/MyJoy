<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    public function songcategories()
    {
    	return $this->hasMany('App\Model\SongCategory');
    }
}
