@extends('layouts.front.master')
@section('content')
	<section class="breadcumb-area bg-img bg-overlay" style="background-image: url(/img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>See what’s blog</p>
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
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Post Thumb -->
                        <!-- Blog Content -->
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="#" class="post-title">{{$blog->title}}</a>
                            <div class="blog-post-thumb mt-30">
                                 <a>
                                    @if(!empty($blog->image))
                                        <img src="/upload/blogs/{{$blog->image}}" alt="">
                                    @else
                                        <img src="/img/bg-img/a1.jpg" alt="">
                                    @endif
                                 </a>
                            
                            </div>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> {{$blog->user->name}}</a></p>                                
                            </div>
                            <!-- Post Excerpt -->
                            <h4>{{$blog->description}}</h4>
                            <p>{!!html_entity_decode($blog->content)!!}</p>
                        </div>

                    </div>
                    <div class="blog-comment">
                        <div class="section-heading-4 heading-dark">
                            <h3 class="item-heading">COMMENTS</h3>
                        </div>
                        @foreach($blog->comments as $comment)
                        <div class="media media-none--xs">
                            <img src="/upload/avatar_user/avttest.jpeg" alt="Blog Comments" class="img-fluid media-img-auto">
                            <div class="media-body">
                                <h4 class="item-title">{{$comment->user->name}}</h4>
                                <div class="item-subtitle">2 Mins Ago</div>
                                <p>{{$comment->comment}}</p>
                                <a href="#" class="item-btn">Reply</a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    @if (Auth::check())
                    @if(session('flash_message'))
                        <div class="alert alert-success">
                            {{session('flash_message')}}
                        </div>
                    @endif
                    <div class="blog-form">
                        <div class="section-heading-4 heading-dark">
                            <h3 class="item-heading">WRITE A COMMENT</h3>
                        </div>
                        <form class="contact-form-box" action="{{$blog->id}}" method="post">
                            @csrf
                            <div class="row gutters-15">
                                <div class="col-12 form-group">
                                    <textarea placeholder="Write your comments ..." class="textarea form-control"
                                        name="comment" rows="8" cols="20" data-error="Message field is required"
                                        required></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="col-12 form-group">
                                    <button class="item-btn">POST COMMENT</button>
                                </div>
                            </div>
                            <div class="form-response"></div>
                        </form>
                    </div>
                    @endif
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
                            <a href="#"><img src="/img/bg-img/add.gif" alt=""></a>
                        </div>

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <a href="#"><img src="/img/bg-img/add2.gif" alt=""></a>
                        </div>

                    </div>
                </div>
        </div>
    </div>
@endsection
