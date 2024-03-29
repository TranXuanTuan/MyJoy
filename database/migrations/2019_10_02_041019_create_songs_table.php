<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSongsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('songs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('song_name');
            $table->string('picture')->nullable();
            $table->unsignedBigInteger('artist_id');
            $table->unsignedBigInteger('category_id');
            $table->unsignedBigInteger('album_id')->nullable();
            $table->text('song_lyric')->nullable();
            $table->string('composer');
            $table->string('url');
            $table->string('mv')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('songs');
    }
}
