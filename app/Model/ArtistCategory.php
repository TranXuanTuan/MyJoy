<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ArtistCategory extends Model
{
	protected $fillable = [
        'category_name', 'created_at',
    ];
   	public function artists()
   	{
   		return $this->hasMany('App\Model\Artist','category_id');
   	}
}
