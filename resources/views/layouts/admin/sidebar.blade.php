<div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
            <img src="/plugins/lte/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
            <a href="#" class="d-block">{{ Auth::user()->name }}</a>
        </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="fas fa-tachometer-alt"></i>
                    <p>
                        Dashboard
                        <i class="fas fa-angle-left right"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                         <a href="{{url('admin\dashboards')}}" class="nav-link">
                            <i class="fas fa-home nav-icon"></i>
                            <p>Home</p>
                        </a>
                    </li>
                    
                </ul>
            </li>
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="fas fa-users"></i>
                    <p>
                        User 
                        <i class="fas fa-angle-left right"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{url('admin/users')}}" class="nav-link">
                            <i class="fas fa-list nav-icon"></i>
                            <p>User List</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{url('admin/users/create')}}" class="nav-link">
                            <i class="fas fa-user-plus nav-icon"></i>
                            <p>User Add</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="fas fa-music"></i>
                    <p>
                        Song 
                        <i class="fas fa-angle-left right"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{route('songs.index')}}" class="nav-link">
                            <i class="fas fa-list"></i>
                            <p>Songs List</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('news.create')}}" class="nav-link">
                            <i class="fas fa-plus-square"></i>
                            <p>Songs Add</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="far fa-newspaper"></i>
                    <p>
                        News 
                        <i class="fas fa-angle-left right"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{route('news.index')}}" class="nav-link">
                            <i class="fas fa-list"></i>
                            <p>News List</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{route('news.create')}}" class="nav-link">
                            <i class="fas fa-plus-square"></i>
                            <p>News Add</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item has-treeview">
                <a href="#" class="nav-link">
                    <i class="fas fa-bars"></i>
                    <p>
                        Menu 
                        <i class="fas fa-angle-left right"></i>
                    </p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{url('admin/menus')}}" class="nav-link">
                            <i class="fas fa-list nav-icon"></i>
                            <p>Menu List</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{url('admin/menus/create')}}" class="nav-link">
                            <i class="fas fa-plus-square nav-icon"></i>
                            <p>Menu Add</p>
                        </a>
                    </li>
                </ul>
            </li>


            
        </ul>
    </nav>
    <!-- /.sidebar-menu -->
</div>