<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFkPlaylistSong extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('playlist_song', function (Blueprint $table) {
            $table->foreign('playlist_id')
                ->references('id')->on('playlists')
                ->onDelete('cascade');
            $table->foreign('song_id')
            ->references('id')->on('songs')
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
        Schema::table('playlist_song', function (Blueprint $table) {
            $table->dropForeign(['playlist_id'],['song_id']);
        });
    }
}
