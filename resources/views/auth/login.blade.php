@extends('layouts.front.master')

@section('content')
<div class="wrapper">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
            <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
                <div class="bradcumbContent">
                    <p>See what’s new</p>
                    <h2>Login</h2>
                </div>
            </section>
            <!-- ##### Breadcumb Area End ##### -->

            <!-- ##### Login Area Start ##### -->
            <section class="login-area section-padding-100">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12 col-lg-8">
                            <div class="login-content">
                                <h3>Welcome Back</h3>
                                <!-- Login Form -->
                                <div class="login-form">
                                    <form method="POST" action="{{ route('login') }}">
                                        @csrf
                                        @if (session('status'))
                                            <div class="alert alert-success">
                                                {{ session('status') }}
                                            </div>
                                        @endif
                                        @if (session('warning'))
                                            <div class="alert alert-warning">
                                                {{ session('warning') }}
                                            </div>
                                        @endif
                                        <div class="form-group">
                                            <label for="email">{{ __('E-Mail Address') }}</label>
                                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                            <small id="emailHelp" class="form-text text-muted"><i class="fa fa-lock mr-2"></i>We'll never share your email with anyone else.</small>
                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="password">{{ __('Password') }}</label>
                                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                            @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-8 offset-md-3">
                                                <button type="submit" class="btn oneMusic-btn mt-30">{{ __('Login') }}</button>

                                                

                                                @if (Route::has('password.request'))
                                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                                        {{ __('Forgot Your Password?') }}
                                                    </a>
                                                @endif
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ##### Login Area End ##### -->
    </div>   
</div>     
@endsection