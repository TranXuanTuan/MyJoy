<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    protected $fillable = [
        'category_name',
    ];
    public function artist()
    {
    	return $this->belongsTo('App\Model\Artist');
    }

    public function category()
    {
    	return $this->belongsTo('App\Model\AlbumCategory');
    }

    public function songs()
    {
        return $this->hasMany('App\Model\Song');
    }
}
