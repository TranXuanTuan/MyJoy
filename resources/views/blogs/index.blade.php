@extends('layouts.front.master')
@section('content')
		<section class="breadcumb-area bg-img bg-overlay" style="background-image: url(/img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s blogs</p>
            <h2>Blogs</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-9">

                    <!-- Single Post Start -->
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="30ms">
                        <!-- Post Thumb -->
                         @foreach($blogs as $blog)
                        <div class="blog-post-thumb mt-30">
                            <a href="{{route('blogs.show', $blog -> id)}}">
                                @if(!empty($blog->image))
                                    <img src="/upload/blogs/{{$blog->image}}" alt="">
                                @else
                                    <img src="/img/images/no-image.png" alt="no image">
                                @endif
                                    
                            </a>
                            <!-- Post Date -->
                            <div class="post-date">
                                <span>{{ $blog->created_at->format('d') }}</span>
                                <span>{{ $blog->created_at->format('F,y ') }}</span>
                            </div>
                        </div>

                        <!-- Blog Content -->
                       
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="{{route('blogs.show', $blog->id)}}" class="post-title">{{$blog -> title}}</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> {{$blog->author}}</a></p>
                                <p class="tags"><a href="#">2 Comments</a></p>
                            </div>
                            <!-- Post Excerpt -->
                            <h4>{{$blog -> description}}</h4>
                        </div>
                        @endforeach
                    </div>
                    {!! $blogs->links() !!}
                </div>

                <div class="col-12 col-lg-3">
                    <div class="blog-sidebar-area">

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <div class="widget-title">
                                <h5>Categories</h5>
                            </div>
                            <div class="widget-content">
                                <ul>
                                    <li><a href="#">Music</a></li>
                                    <li><a href="#">Events &amp; Press</a></li>
                                    <li><a href="#">Festivals</a></li>
                                    <li><a href="#">Lyfestyle</a></li>
                                    <li><a href="#">Uncategorized</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <div class="widget-title">
                                <h5>Archive</h5>
                            </div>
                            <div class="widget-content">
                                <ul>
                                    <li><a href="#">February 2018</a></li>
                                    <li><a href="#">March 2018</a></li>
                                    <li><a href="#">April 2018</a></li>
                                    <li><a href="#">May 2018</a></li>
                                    <li><a href="#">June 2018</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <div class="widget-title">
                                <h5>Tags</h5>
                            </div>
                            <div class="widget-content">
                                <ul class="tags">
                                    <li><a href="#">music</a></li>
                                    <li><a href="#">events</a></li>
                                    <li><a href="#">artists</a></li>
                                    <li><a href="#">press</a></li>
                                    <li><a href="#">mp3</a></li>
                                    <li><a href="#">videos</a></li>
                                    
                                </ul>
                            </div>
                        </div>

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <a href="#"><img src="img/bg-img/add.gif" alt=""></a>
                        </div>

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <a href="#"><img src="img/bg-img/add2.gif" alt=""></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
