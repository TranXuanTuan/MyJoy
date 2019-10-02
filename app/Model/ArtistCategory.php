<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ArtistCategory extends Model
{
   	public function artists()
   	{
   		return $this->hasMany('App\Model\Artist');
   	}
}
