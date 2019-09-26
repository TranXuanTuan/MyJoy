<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $fillable = [
        'MenuName', 
    ];

    public function subCategories()
    {
    	return $this->hasMany('App\SubCategory');
    }
}
