@include('layouts.front.top_header')
<div class="wrapper">
    @include('layouts.front.header')
    @include('layouts.front.sidebar')
    @include('layouts.front.search')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
            <section class="content">
                @yield('content')
            </section>       
@include('layouts.front.footer')