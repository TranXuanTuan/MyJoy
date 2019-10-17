<header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="{{ url('/') }}" class="nav-brand"><img src="{{ asset('/img/core-img/logo.png')}}" alt=""></a>

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
                                    <li><a href="{{route('subjects.index')}}">Subject</a>
                                       <ul class="dropdown">
                                            @foreach($subjects as $subject)
                                            <li><a href="{{ route('subjects.show',$subject->id)}}">{{$subject->subject_name}}</a>
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
                                    <li><a href="#">Events</a></li>
                                    <li><a href="{{route('news.index')}}">News</a></li>
                                    @if (Auth::user())
                                    <li><a href="#">Libary</a></li>
                                    @endif
                                    <li><a href="#">Contact</a></li>
                                </ul>
                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
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
                                            <div class="cart-btn">
                                                <p><span class="icon-shopping-cart"></span></p>
                                            </div>
                                        </li>
                                        <li>
                                            @role('Admin') {{-- Laravel-permission blade helper --}}
                                            <a href="{{ url('admin\dashboards') }}"><i class="icon-padlock" ></i>ADMIN</a>
                                            @endrole
                                        </li>
                                        <li >
                                            <a class="icon-power-button" href="{{ route('logout') }}" onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();">
                                            </a>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST"style="display: none;">
                                            {{ csrf_field() }}
                                            </form>
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