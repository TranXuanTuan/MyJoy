<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFkProductReceiptDetail extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('receipt_detail', function (Blueprint $table) {
            $table->foreign('product_id')
                ->references('id')->on('products')
                ->onDelete('cascade');
            $table->foreign('receipt_id')
            ->references('id')->on('receipts')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('receipt_detail', function (Blueprint $table) {
            $table->dropForeign(['product_id'],['receipt_id']);
        });
    }
}
