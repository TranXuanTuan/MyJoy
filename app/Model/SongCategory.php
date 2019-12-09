<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class SongCategory extends Model
{
    protected $fillable = [
        'topic_id', 'category_name',
    ];

    public function topic()
    {
    	return $this->belongsTo('App\Model\Topic');
    }

    public function songs()
    {
    	return $this->hasMany('App\Model\Song');
    }
}
