<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    public function menu()
    {
    	return $this->belongsTo('App\Menu');
    }
}
