<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Artist extends Model
{
    protected $fillable = [
        'category_id', 'artist_name','intro','avatar',
    ];

    public function category()
    {
    	return $this->belongsTo('App\Model\ArtistCategory');
    }

    public function songs()
    {
    	return $this->hasMany('App\Model\Song');
    }

    public function albums()
    {
    	return $this->hasMany('App\Model\Album');
    }
}
