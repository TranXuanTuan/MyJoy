<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $fillable = [
        'menu_name', 
    ];

    public function subCategories()
    {
    	return $this->hasMany('App\Model\SubCategory');
    }
}
