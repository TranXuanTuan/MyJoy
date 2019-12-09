<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $fillable = [
        'title', 'description','content','user_id','image'
    ];

    public function comments()
    {
        return $this->hasMany('App\Model\Comment');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
