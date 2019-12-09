@extends('layouts.front.master')
@section('content')

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(/img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s new</p>
            <h2>Products</h2>
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
                @foreach($productcategories as $cate)  
                <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item">
                    
                    <div class="single-album">
                        <a href="{{route('addtocart',$cate->id)}}">
                        @if(!empty($cate->picture))
                            <img src="/upload/products/{{$cate->picture}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                        <div class="album-info">
                            <h5>{{$cate->name_product}}</h5>
                            <p><i class="icon-shopping-cart">{{number_format($cate->price)}} $</i></p>
                            
                        </div>
                        </a>
                    </div>
                </div>
                @endforeach       
            </div>
        </div>
    </section>
@endsection