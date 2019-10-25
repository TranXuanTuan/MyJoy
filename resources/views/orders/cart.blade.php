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

    @if(empty($beats))
        <h2 class="error">Data empty.</h2>
    @else
        <!-- <div class="row">
            @foreach($beats as $beat)
                <div class="col-3">
                    <div class="book-info">
                        <h3>{{ $beat->author }}</h3>
                        <div class="book-picture">
                            @if(!empty($beat->picture) && Storage::disk('local')->exists($beat->picture))
                                <img src="{{ Storage::disk('local')->url($beat->picture) }}" alt="{{ $beat->picture }}" class="img-fluid">
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>
                        <a href="{{ route('cart-cancel', $beat->id) }}" class="btn btn-danger">Cancel</a>
                    </div>
                </div>
            @endforeach
        </div> -->
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
                        @foreach($beats as $beat)
                        <div class="single-upcoming-shows d-flex align-items-center flex-wrap">
                            <div class="shows-desc d-flex align-items-center">
                                <div class="shows-img">
                                    @if(!empty($beat->picture) && Storage::disk('local')->exists($beat->picture))
                                        <img src="{{ Storage::disk('local')->url($beat->picture) }}" alt="{{ $beat->picture }}" class="img-fluid">
                                    @else
                                        <img src="/img/images/no-image.png" alt="no image">
                                    @endif
                                </div>
                                <div class="shows-name">
                                    <h6>{{$beat->author}}</h6>
                                </div>
                            </div>
                                <div class="shows-location">
                                    <p>{{$beat->price}}&#36;</p>
                                </div>
                            <div class="buy-tickets">
                                <a href="{{ route('cart-cancel', $beat->id) }}" class="btn try-btn">Cancel</a>
                            </div>
                            <div class="buy-tickets">
                                <a href="{{ route('cart-complete', $beat->id) }}" class="btn musica-btn" data-target="#cart">Pay</a>
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