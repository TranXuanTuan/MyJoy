@extends('layouts.front.master')
@section('content')
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

    @if(empty($products))
        <h2 class="error">Data empty.</h2>
    @else
        <div class="row">
            @foreach($products as $product)
                <div class="col-3">
                    <div class="book-info">
                        <h3>{{ $product->name_product }}</h3>
                        <div class="book-picture">
                            @if(!empty($product->picture) && Storage::disk('local')->exists($product->picture))
                                <img src="{{ Storage::disk('local')->url($product->picture) }}" alt="{{ $product->picture }}" class="img-fluid">
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>
                        <a href="{{ route('cart-cancel', $product->id) }}" class="btn btn-danger">Cancel</a>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="upcoming-shows-area section-padding-100" style="background-image: url(/img/bg-img/bg-2.jpg);">
            <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h2>Cart</h2>
                    </div>
                </div>
            </div>
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
                                    <p>Price</p>
                                </div>
                            </div>
                        </div>
                        @foreach($products as $product)
                        <div class="single-upcoming-shows d-flex align-items-center flex-wrap">
                            <div class="shows-desc d-flex align-items-center">
                                <div class="shows-img">
                                    @if(!empty($product->picture) && Storage::disk('local')->exists($product->picture))
                                        <img src="{{ Storage::disk('local')->url($product->picture) }}" alt="{{ $product->picture }}" class="img-fluid">
                                    @else
                                        <img src="/img/images/no-image.png" alt="no image">
                                    @endif
                                </div>
                                <div class="shows-name">
                                    <h6>{{$product->name_product}}</h6>
                                </div>
                            </div>
                                <div class="shows-location">
                                    <p>{{$product->price}}&#36;</p>
                                </div>
                            <div class="buy-tickets">
                                <a href="{{ route('cart-cancel', $product->id) }}" class="btn try-btn">Cancel</a>
                            </div>
                            <div class="buy-tickets">
                                <a href="{{ route('cart-complete', $product->id) }}" class="btn musica-btn" data-target="#cart">Pay</a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
@endsection