@extends('layouts.front.master')
@section('content')

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(/img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2>ARTISTS</h2>
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
                @foreach($artist as $at)  
                <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item">
                    
                    <div class="single-album">
                        <a href="{{route('artistdetail',$at->id)}}">
                        @if(!empty($at->avatar))
                            <img src="/upload/artists/{{$at->avatar}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                        <div class="album-info">
                            <h5>{{$at->artist_name}}</h5>
                        </div>
                        </a>
                    </div>
                </div>
                @endforeach       
            </div>
        </div>
    </section>
@endsection