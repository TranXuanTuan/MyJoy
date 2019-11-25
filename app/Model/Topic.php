<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    protected $fillable = [
        'topic_name', 'picture'
    ];
    public function songcategories()
    {
    	return $this->hasMany('App\Model\SongCategory');
    }
}
