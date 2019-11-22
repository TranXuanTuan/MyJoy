<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Receipt extends Model
{
    public function receiptdetails()
    {
    	return $this->hasMany('App\Model\ReceiptDetail');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
