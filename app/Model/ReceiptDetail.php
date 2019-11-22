<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ReceiptDetail extends Model
{
    public function beat()
    {
    	return $this->belongsTo('App\Model\Beat');
    }

    public function receipt()
    {
    	return $this->belongsTo('App\Model\Receipt');
    }
}
