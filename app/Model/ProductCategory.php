<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
	protected $fillable = [
        'product_name', 'picture'
    ];
    public function beats()
    {
    	return $this->hasMany('App\Model\Product');
    }

    
}
