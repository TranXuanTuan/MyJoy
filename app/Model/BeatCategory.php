<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class BeatCategory extends Model
{
    public function beats()
    {
    	return $this->hasMany('App\Model\Beat');
    }

    
}
