<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ReceiptDetail extends Model
{
	protected $table = 'receipt_detail';

    public function product()
    {
    	return $this->belongsTo('App\Model\Product');
    }

    public function receipt()
    {
    	return $this->belongsTo('App\Model\Receipt');
    }
}
