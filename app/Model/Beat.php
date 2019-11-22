<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Beat extends Model
{	
    public function beatcategory()
    {
    	return $this->belongsTo('App\Model\BeatCategory');
    }

    public function receiptdetails()
    {
    	return $this->hasOne('App\Model\ReceiptDetail');
    }
}
