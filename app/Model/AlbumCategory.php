<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class AlbumCategory extends Model
{
	protected $fillable = [
        'category_name',
    ];
    public function albums()
    {
    	return $this->hasMany('App\Model\Album','category_id');
    }
}
