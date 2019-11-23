<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    public function beats()
    {
    	return $this->hasMany('App\Model\Product');
    }

    
}
