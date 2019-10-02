<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Receipt extends Model
{
    public function beat()
    {
    	return $this->belongsTo('App\Model\Beat');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
