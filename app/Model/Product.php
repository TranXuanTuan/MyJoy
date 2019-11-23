<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{	
    public function productcategory()
    {
    	return $this->belongsTo('App\Model\ProductCategory');
    }

    public function receiptdetails()
    {
    	return $this->hasMany('App\Model\ReceiptDetail');
    }
}
