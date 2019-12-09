@extends('layouts.front.master')
@section('content')

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(/img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2>ALBUMS</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Album Catagory Area Start ##### -->
    <section class="album-catagory section-padding-100-0">
        <div class="container">
            <div class="browse-by-catagories catagory-menu d-flex flex-wrap align-items-center mb-70">          
                        <a href="#">ALL</a>
            </div>
            <div class="row oneMusic-albums">
                <!-- Single Album -->
                @foreach($album_categories as $album_category)  
                <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item">
                    
                    <div class="single-album">
                        <a href="{{route('albumdetail',$album_category->id)}}">
                        <img src="/upload/albums/{{$album_category->thumb}}" alt="">
                        <div class="album-info">
                            <h5>{{$album_category->album_name}}</h5>
                        </div>
                        </a>
                    </div>
                </div>
                @endforeach       
            </div>
        </div>
    </section>
@endsection