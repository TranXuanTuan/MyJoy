@extends('layouts.front.master')
@section('content')
            <section class="latest-albums-area section-padding-100">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-heading style-2">
                                <p>See what’s new</p>
                                <h2>Albums</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="albums-slideshow owl-carousel">
                                <!-- Single Album -->
                                @foreach($albums as $album)
                                <div class="single-album"> 
                                    <a href="{{route('albumdetail',$album->id)}}">
                                        <img src="/upload/albums/{{$album->thumb}}" alt="">
                                        <div class="album-info">
                                            <h5>{{$album->album_name}}</h5>
                                        </div>
                                    </a>
                                </div>
                                 @endforeach
                                <!-- Single Album -->
                                
                            </div>
                           
                        </div>
                    </div>
                </div>
            </section>
            <!-- ##### Buy Now Area Start ##### -->
            <section class="oneMusic-buy-now-area has-fluid bg-gray section-padding-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-heading style-2">
                                <p>See what’s new</p>
                                <h2>Buy What’s New</h2>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <!-- Single Album Area -->
                        @foreach($product_categories as $product_category) 
                        <div class="col-12 col-sm-6 col-md-4 col-lg-2">                           
                            <div class="single-album-area wow fadeInUp" data-wow-delay="100ms">
                                <a href="{{route('products.show',$product_category->id)}}">
                                    <div class="album-thumb" >
                                        <img src="/upload/product_category/{{$product_category->picture}}" alt="" >
                                    </div>
                                    <div class="album-info">                                    
                                        <h5>{{$product_category->product_name}}</h5>                                  
                                    </div>  
                                </a>                            
                            </div>                           
                        </div>
                        @endforeach
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="load-more-btn text-center wow fadeInUp" data-wow-delay="300ms">
                                <a href="{{route('products.index')}}" class="btn oneMusic-btn">Load More <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ##### Buy Now Area End ##### -->

            <!-- ##### Featured Artist Area Start ##### -->
            <section class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed" style="background-image: url(img/bg-img/bg-4.jpg);">
                <div class="container">
                    <iframe width="100%" height="500" src="https://www.youtube.com/embed/ryMy77t9f1I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </section>
                <!-- ##### Featured Artist Area End ##### -->

                <!-- ##### Miscellaneous Area Start ##### -->
                <section class="miscellaneous-area section-padding-100-0">
                    <div class="container">
                        <div class="row">
                            <!-- ***** Weeks Top ***** -->
                            <div class="col-12 col-lg-4">
                                <div class="weeks-top-area mb-100">
                                    <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                                        <p>See what’s new</p>
                                        <h2>Products</h2>
                                    </div>

                                    <!-- Single Top Item -->
                                    @foreach($products as $product)
                                    <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="100ms">
                                        <div class="thumbnail">
                                            <img src="/upload/products/{{$product->picture}}" alt="">
                                        </div>
                                        <div class="content-">
                                            <h6>{{$product->name_product}}</h6>
                                            <p>{{$product->price}}$</p>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>

                            <!-- ***** New Hits Songs ***** -->
                            <div class="col-12 col-lg-4">
                                <div class="new-hits-area mb-100">
                                    <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                                        <p>See what’s new</p>
                                        <h2>New Hits</h2>
                                    </div>

                                    <!-- Single Top Item -->
                                    @foreach($songs as $song)
                                    <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">
                                        <div class="first-part d-flex align-items-center">
                                            <div class="thumbnail">
                                                <img src="/upload/songs/{{$song->picture}}" alt="">
                                            </div>
                                            <div class="content-">
                                                <h6>{{$song->artist->artist_name}}</h6>
                                                <p>{{$song->song_name}}</p>
                                            </div>
                                        </div>
                                        <audio preload="auto" controls>
                                            <source src="/upload/url/{{$song->url}}">
                                        </audio>
                                        </div>
                                        @endforeach
                                            </div>
                                        </div>

                                        <!-- ***** Popular Artists ***** -->
                                        <div class="col-12 col-lg-4">
                                            <div class="popular-artists-area mb-100">
                                                <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                                                    <p>See what’s new</p>
                                                    <h2>Popular Artist</h2>
                                                </div>
                                                <!-- Single Artist -->
                                                @foreach($artists as $artist)
                                                <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="100ms">
                                                    <div class="thumbnail">
                                                        <img src="/upload/artists/{{$artist->avatar}}" alt="">
                                                    </div>
                                                    <div class="content-">
                                                        <p>{{$artist->artist_name}}</p>
                                                    </div>
                                                </div>
                                                @endforeach
                                            </div>
                                        </div>
                                                </div>
                                            </div>
                                        </section>
                                        <!-- ##### Miscellaneous Area End ##### -->

                                        <!-- ##### Contact Area Start ##### -->
                                        <section class="contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img" style="background-image: url(/img/bg-img/bg-2.jpg);">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="section-heading white wow fadeInUp" data-wow-delay="100ms">
                                                            <p>See what’s new</p>
                                                            <h2>Get In Touch</h2>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        <!-- Contact Form Area -->
                                                        <div class="contact-form-area">
                                                            <form action="#" method="post">
                                                                <div class="row">
                                                                    <div class="col-md-6 col-lg-4">
                                                                        <div class="form-group wow fadeInUp" data-wow-delay="100ms">
                                                                            <input type="text" class="form-control" id="name" placeholder="Name">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 col-lg-4">
                                                                        <div class="form-group wow fadeInUp" data-wow-delay="200ms">
                                                                            <input type="email" class="form-control" id="email" placeholder="E-mail">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-4">
                                                                        <div class="form-group wow fadeInUp" data-wow-delay="300ms">
                                                                            <input type="text" class="form-control" id="subject" placeholder="Subject">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12">
                                                                        <div class="form-group wow fadeInUp" data-wow-delay="400ms">
                                                                            <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 text-center wow fadeInUp" data-wow-delay="500ms">
                                                                        <button class="btn oneMusic-btn mt-30" type="submit">Send <i class="fa fa-angle-double-right"></i></button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
</section>
                                        <!-- ##### Contact Area End ##### -->
@endsection