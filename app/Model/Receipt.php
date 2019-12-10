<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Receipt extends Model
{
    public function receipt_detail()
    {
    	return $this->hasMany('App\Model\ReceiptDetail');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
