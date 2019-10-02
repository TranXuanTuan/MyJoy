<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    public function menu()
    {
    	return $this->belongsTo('App\Model\Menu');
    }
}
