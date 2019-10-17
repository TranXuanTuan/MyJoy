@extends('layouts.front.master')
@section('content')

    <!-- ##### Breadcumb Area Start ##### -->
    <!-- ##### Breadcumb Area End ##### -->

   <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(/img/bg-img/bg-4.jpg);">
                <div class="container">
                    <div class="row align-items-end">
                        <div class="col-12 col-md-5 col-lg-4">
                            <div class="featured-artist-thumb">
                                <img src="/img/bg-img/a1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-12 col-md-5 col-lg-8">
                            <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                                <div class="song-play-area">
                                    <div class="song-name">
                                        <p>01. Main Hit Song</p>
                                    </div>
                                    <audio preload="auto" controls>
                                        <source src="/audio/dummy-audio.mp3">
                                    </audio>
                                </div>
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