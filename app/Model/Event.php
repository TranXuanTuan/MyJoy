<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = [
        'title', 'event_place', 'event_date','content','user_id','author','image'
    ];
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
