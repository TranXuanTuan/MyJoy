@extends('layouts.front.master')
@section('content')
<div class="upcoming-shows-area section-padding-100" style="background-image: url(/img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h2>Buy Beats</h2>
                    </div>
                </div>
            </div>
            {{--show message success--}}
            @if(session()->has('success'))
                <div class="alert alert-success">
                    {{ session()->get('success') }}
                </div>
            @endif

            {{--show message fail--}}
            @if(session()->has('error'))
                <div class="alert alert-danger">
                    {{ session()->get('error') }}
                </div>
            @endif
            <div class="row">
                <div class="col-12">
                    <!-- Upcoming Shows Content -->
                    <div class="upcoming-shows-content" >

                        <!-- Single Upcoming Shows -->
                        <div class="single-upcoming-shows d-flex align-items-center flex-wrap">
                            <div class="shows-desc d-flex align-items-center">
                                <div class="shows-name">
                                    <h6>Author</h6>
                                </div>
                            </div>
                                <div class="shows-location">
                                    <p>Content</p>
                                </div>
                                <div class="shows-time">
                                    <p>Price</p>
                                </div>
                            </div>

                        <div class="single-upcoming-shows d-flex align-items-center flex-wrap">
                            <div class="shows-desc d-flex align-items-center">
                                <div class="shows-img">
                                    <img src="/img/bg-img/s1.jpg" alt="">
                                </div>
                                <div class="shows-name">
                                    <h6>{{$beat->author}}</h6>
                                </div>
                            </div>
                            <div class="shows-location">
                                <p>{{$beat->content}}</p>
                            </div>
                            <div class="shows-time">
                                <p>{{$beat->price}}&#36;</p>
                            </div>
                            <div class="buy-tickets">
                                <a href="#" class="btn try-btn">Try</a>
                            </div>
                            <div class="buy-tickets">
                                <a href="{{ route('order',$beat->id)}}" class="btn musica-btn" data-target="#cart">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection