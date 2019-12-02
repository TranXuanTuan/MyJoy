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

    <?php
    function changecolor($str,$key){
        return str_replace($key, "<span style='color:red;'>$key</span>", $str);
    }
    ?>
    <div class="blog-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-9">
                    <h1>Search: {{$key}}</h1>
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
                            <a href="{{route('blogs.show', $blog->id)}}" class="post-title">{!! changecolor($blog->title,$key) !!}</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By<a href="#"> {{$blog->author}}</a></p>
                                <p class="tags"><a href="#">2 Comments</a></p>
                            </div>
                            <!-- Post Excerpt -->
                            <h4>{!! changecolor($blog->description,$key) !!}</h4>
                        </div>
                        @endforeach
                    </div>
                    {!! $blogs->links() !!}
                </div>
                </div>
            </div>
        </div>
    </div>
@endsection
