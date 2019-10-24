<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    public function songcategories()
    {
    	return $this->hasMany('App\Model\SongCategory');
    }

    public function songs()
    {
        return $this->hasManyThrough(
            'App\Model\Song','App\Model\SongCategory','subject_id' ,'category_id','id'
        );
    }
}
