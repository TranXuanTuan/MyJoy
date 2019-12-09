@extends('layouts.front.master')
@section('content')
   <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(/img/bg-img/bg-4.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-5 col-lg-4">
                <div class="featured-artist-thumb">
                    <img src="/upload/albums/{{$album->thumb}}" alt="">
                </div>
            </div>
            <div class="col-12 col-md-5 col-lg-8">
                <div class="featured-artist-content">
                    <!-- Section Heading -->
                    <div class="section-heading white text-left mb-30">
                        <h2>ALBUM:{{$album->album_name}}</h2>
                        <p>{{$album->artist->artist_name}}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="one-music-songs-area mb-70">
            <div class="row">
                <!-- Single Song Area -->
                <div class="col-12">
                    @foreach($album->songs as $song)
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            @if(!empty($song->picture))
                                <img src="/upload/songs/{{$song->picture}}" alt="">
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>{{$song->song_name}} - {{$song->artist->artist_name}}</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="/upload/url/{{$song->url}}">
                            </audio>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    </section>
@endsection