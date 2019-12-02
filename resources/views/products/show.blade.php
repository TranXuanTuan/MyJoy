@extends('layouts.front.master')
@section('content')
<div class="upcoming-shows-area section-padding-100" style="background-image: url(/img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h2>Buy Products</h2>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection