@extends('layouts.front.master')
@section('content')

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(/img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2>Song Category</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Album Catagory Area Start ##### -->
    <section class="album-catagory section-padding-100-0">
        <div class="container">       

            <div class="browse-by-catagories catagory-menu d-flex flex-wrap align-items-center mb-70">          
                        <a href="#">Song Category</a>
            </div>

            <div class="row oneMusic-albums">
                <!-- Single Album -->
                @foreach($songcategories as $songcategory)
                <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item">
                    <div class="single-album">
                         <a href="#">
                        <img src="/upload/song_category/t.jpg" alt="">
                        <div class="album-info">                          
                            <h5>{{$songcategory->category_name}}</h5>                           
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
                                <a href="#" class="btn oneMusic-btn">See All<i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

             
        </div>
    </section>

    


@endsection