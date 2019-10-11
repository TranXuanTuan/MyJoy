@extends('layouts.front.master')
@section('content')

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2>Latest Albums</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Album Catagory Area Start ##### -->
    <section class="album-catagory section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="browse-by-catagories catagory-menu d-flex flex-wrap align-items-center mb-70">

                        <a href="#" data-filter="*" class="active">Browse All</a>
                        <a href="#" data-filter=".a" >VietNam</a>
                        <a href="#" data-filter=".b">US-UK</a>
                        <a href="#" data-filter=".c">Asian</a>
                        <a href="#" data-filter=".d">Concert</a>

                    </div>
                </div>
            </div>

            <div class="row oneMusic-albums">
                <!-- Single Album -->
                @foreach($albums as $album)
                <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item t c p">
                    <div class="single-album">
                        <img src="img/bg-img/a1.jpg" alt="">
                        <div class="album-info">
                            <a href="#">
                                <h5>{{$album->album_name}}</h5>
                            </a>
                            <p>{{$album->description}}</p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- ##### Album Catagory Area End ##### -->

    <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="load-more-btn text-center">
                        <a href="#" class="btn oneMusic-btn">Load More <i class="fa fa-angle-double-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Buy Now Area End ##### -->

    <!-- ##### Add Area Start ##### -->
    <div class="add-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="adds">
                        <a href="#"><img src="img/bg-img/add3.gif" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Add Area End ##### -->

    <!-- ##### Song Area Start ##### -->
    <div class="one-music-songs-area mb-70">
        <div class="container">
            <div class="row">

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/bg-img/s1.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. Main Hit Song</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>
                    </div>
                </div>

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/bg-img/s2.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. Main Hit Song</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>
                    </div>
                </div>

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/bg-img/s3.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. Main Hit Song</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>
                    </div>
                </div>

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/bg-img/s4.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. Main Hit Song</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- ##### Song Area End ##### -->

@endsection