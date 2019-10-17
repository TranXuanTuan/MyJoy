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
            @foreach($album_categories as $album_category)
            <div class="browse-by-catagories catagory-menu d-flex flex-wrap align-items-center mb-70">          
                        <a href="#">{{$album_category->category_name}}</a>
            </div>
            
            <div class="row oneMusic-albums">
                <!-- Single Album -->
                @foreach($album_category->albums as $album)
                <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item">
                    <div class="single-album">
                        <a href="{{route('albumdetail',$album_category->id)}}">
                        <img src="img/bg-img/a1.jpg" alt="">
                        <div class="album-info">
                                <h5>{{$album->album_name}}</h5>
                        </div>
                        </a>
                    </div>
                </div>
                @endforeach
            </div>
            
            <div class="oneMusic-buy-now-area mb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="load-more-btn text-center">
                                <a href="{{ route('albums.show',$album->category_id)}}" class="btn oneMusic-btn">See All<i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        {!! $albums->links() !!}
    </section>
@endsection