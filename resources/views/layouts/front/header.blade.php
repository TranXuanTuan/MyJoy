<header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="{{ url('/') }}" class="nav-brand"><!-- <img src="{{ asset('/img/core-img/logo.png')}}" alt=""> --></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="{{ url('/') }}">Home</a></li>
                                    <li><a href="{{route('albums.index')}}">Album</a>
                                       <ul class="dropdown">
                                            @foreach($albumcategories as $albumcategory)
                                            <li>
                                                <a href="{{ route('albums.show',$albumcategory->id)}}">{{$albumcategory->category_name}}</a>
                                            </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{route('topics.index')}}">Topic</a>
                                       <ul class="dropdown">
                                            @foreach($topics as $topic)
                                            <li><a href="{{ route('topics.show',$topic->id)}}">{{$topic->topic_name}}</a>
                                            </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{route('artists.index')}}">Artist</a>
                                       <ul class="dropdown">
                                        @foreach($artist_categories as $artist_category)
                                            <li>
                                                <a href="{{route('artists.show',$artist_category->id)}}">{{$artist_category->category_name}}</a>
                                            </li>
                                        @endforeach    
                                        </ul>
                                    </li>
                                    </li>
                                    <li><a href="{{route('products.index')}}">Product</a></li>
                                    <li><a href="{{route('events.index')}}">Event</a></li>
                                    <li><a href="{{route('blogs.index')}}">Blog</a></li>
                                    @if (Auth::user())
                                    <li><a href="#">Gallery</a></li>
                                    @endif
                                    <li><a href="{{route('contact.index')}}">Contact</a></li>
                                </ul>
                                
                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                <ul>
                                    <li class="header-search-box divider-style-border" >
                                    <a href="#header-search" title="search">
                                    <i class="icon-loupe"></i>
                                    </a>
                                    </li>
                                </ul>
                                    <!-- Login/Register -->
                                    @if (Auth::guest())
                                    <div class="login-register-btn mr-50">
                                        <ul>
                                            <li>
                                                <a href="{{ route('login') }}" id="loginBtn">Login </a>
                                            </li>
                                            <li>
                                                <a href="{{ route('register') }}" id="registerBtn">Register</a>
                                            </li>
                                        </ul>
                                    </div>
                                    @else
                                    <ul>
                                        <li>
                                        <a href="#"><img src="/upload/avatar_user/anonymous.jpeg" alt="Avatar" class="navbar-user-avatar-img"></a>
                                        <ul >
                                            <li class="dropdown">
                                                @role('Admin')
                                                <a class="dropdown-item" href="{{ url('admin/dashboards') }}">Access Admin</a>
                                                @endrole
                                                <a class="dropdown-item" href="#">Profile</a>
                                                <a class="dropdown-item" href="{{ route('logout') }}"
                                                    onclick="event.preventDefault();
                                                                    document.getElementById('logout-form').submit();">
                                                    Logout
                                                </a>
                                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                    @csrf
                                                </form>
                                            </li>
                                        </ul>
                                        </li>
                                        <li class="cart-wrap divider-style-border">
                                        <a href="#" class="cart-info">
                                            <i class="icon-shopping-cart"></i>
                                        </a>
                                        @if(Session::has('cart'))
                                        <div class="cart-items">
                                            @foreach($product_cart as $product)
                                            <div class="cart-item">
                                                <div class="cart-img">
                                                    <a href="#">
                                                        <img src="/upload/products/{{$product['item']['picture']}}" alt="product" class="img-fluid">
                                                    </a>
                                                </div>
                                                <div class="cart-title">
                                                    <a href="#">{{$product['item']['name_product']}}</a>
                                                </div>
                                                <div class="cart-quantity">{{$product['qty']}}*</div>
                                                <div class="cart-price">{{number_format($product['item']['price'])}}</div>
                                                <div class="cart-trash">
                                                    <a href="{{route('delcart',$product['item']['id'])}}">
                                                        <i class="icon-trash"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            @endforeach
                                            
                                            <div class="cart-item">
                                                <div>Total:<h5>{{number_format(Session('cart')->totalPrice)}}$</h5></div>
                                                <div class="cart-btn">
                                                    <a href="{{route('checkout')}}" class="item-btn">Checkout</a>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                    </li>
                                    </ul>
                                </div>
                                @endif
                                </div>
                            </div>
                            <!-- Nav End -->
                            
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>