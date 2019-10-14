@extends('layouts.front.master')
@section('content')

    <!-- ##### Breadcumb Area Start ##### -->
    <!-- ##### Breadcumb Area End ##### -->

   <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(/img/bg-img/bg-4.jpg);">
                <div class="container">
                    <div class="row align-items-end">
                        <div class="col-12 col-md-5 col-lg-4">
                            <div class="featured-artist-thumb">
                                <img src="/upload/artists/{{$artist->thumb}}" alt="">
                            </div>
                        </div>
                        <div class="col-12 col-md-7 col-lg-8">
                            <div class="featured-artist-content">
                                <!-- Section Heading -->
                                <div class="section-heading white text-left mb-30">
                                    <p>Introduction</p>
                                    <h2>{{$artist->artist_name}}</h2>
                                </div>
                                <p>{{$artist->intro}}</p>
                                <div class="song-play-area">
                                    <div class="song-name">
                                        <p>01. Main Hit Song</p>
                                    </div>
                                        <audio preload="auto" controls>
                                            <source src="/audio/dummy-audio.mp3">
                                        </audio>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
    </section>
@endsection