<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    protected $fillable = [
        'song_name', 'picture', 'artist_id', 'category_id', 'album_id'
        , 'song_lyric', 'composer', 'like', 'mv'
    ];

    public function songcategory()
    {
    	return $this->belongsTo('App\Model\SongCategory');
    }

    public function artist()
    {
    	return $this->belongsTo('App\Model\Artist');
    }

    public function album()
    {
    	return $this->belongsTo('App\Model\Album');
    }

    public function playlist_songs()
    {
    	return $this->hasMany('App\Model\PlaylistSong');
    }

}
