<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AlbumCategory extends Model
{
    public function albums()
    {
    	return $this->hasMany('App\Model\Album');
    }
}
