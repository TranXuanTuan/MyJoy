@extends('layouts.front.master')
@section('content')
   <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(/img/bg-img/bg-4.jpg);">
    <div class="container">
        <div class="row align-items-end">
            <div class="col-12 col-md-5 col-lg-4">
                <div class="featured-artist-thumb">
                    <img src="/img/bg-img/a1.jpg" alt="">
                </div>
            </div>
            <div class="col-12 col-md-5 col-lg-8">
                <div class="featured-artist-content">
                    <!-- Section Heading -->
                    <div class="section-heading white text-left mb-30">
                        <h2>ALBUM:{{$album->album_name}}</h2>
                    </div>
                </div>
                @foreach($album->songs as $song)
                <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                    <div class="song-play-area">
                        <div class="song-name">
                            <p>{{$song->song_name}}</p>
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
    </section>
@endsection