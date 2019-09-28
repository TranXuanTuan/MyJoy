<header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="{{ url('/') }}" class="nav-brand"><img src="{{ asset('img/core-img/logo.png')}}" alt=""></a>

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
                                    <li><a href="albums-store.html">Albums</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="{{ url('/') }}">Home</a></li>
                                            <li><a href="albums-store.html">Albums</a></li>
                                            <li><a href="event.html">Events</a></li>
                                            <li><a href="blog.html">News</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="elements.html">Elements</a></li>
                                            <li><a href="{{ route('login') }}">Login</a></li>
                                            <li><a href="#">Dropdown</a>
                                                <ul class="dropdown">
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                    <li><a href="#">Even Dropdown</a>
                                                        <ul class="dropdown">
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                            <li><a href="#">Deeply Dropdown</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Even Dropdown</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="event.html">Events</a></li>
                                    <li><a href="blog.html">News</a></li>
                                    <li><a href="contact.html">Contact</a></li>
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
                                            <a href="{{ url('admin\users') }}"><i class="icon-padlock" ></i>ADMIN</a>
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
                                    <!-- Cart Button -->
                                    

                                    <div>
                                        
                                        
                                    </div>    
                                    
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