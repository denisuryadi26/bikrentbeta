<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
    <img src="{{asset('assets/dist/img/deynacase.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
        style="opacity: .8">
    <span class="brand-text font-weight-light">Bike Rent</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
    
    <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
            with font-awesome or any other icon font library -->
            <li class="nav-item">
                <a href="{{asset('')}}" class="nav-link">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <p>Dashboard</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ asset('product') }}" class="nav-link">
                    <i class="nav-icon fas fa-biking"></i>
                    <p>Product<i class="right fas fa-angle-left"></i></p>
                </a>
            </li>
            <li class="nav-item has-treeview">
                <a href="{{ asset('transaction') }}" class="nav-link">
                    <i class="nav-icon fas fa-retweet"></i>
                    <p>Transaction<i class="right fas fa-angle-left"></i></p>
                </a>
            </li>
            <li class="nav-item has-treeview">
                <a href="{{ asset('vendor') }}" class="nav-link">
                    <i class="nav-icon fas fa-users"></i>
                    <p>Vendor<i class="right fas fa-angle-left"></i></p>
                </a>
            </li>
            <li class="nav-item has-treeview">
                <a href="{{ asset('user') }}" class="nav-link">
                    <i class="nav-icon fas fa-users"></i>
                    <p>User<i class="right fas fa-angle-left"></i></p>
                </a>
            </li>
            <li class="nav-item has-treeview">
                <a href="{{ asset('chatroom') }}" class="nav-link">
                    <i class="nav-icon fas fa-comments"></i>
                    <p>Chat Room<i class="right fas fa-angle-left"></i></p>
                </a>
            </li>
            <li class="nav-item has-treeview">
                <a href="{{ asset('log') }}" class="nav-link">
                    <i class="nav-icon fas fa-history"></i>
                    <p>Log<i class="right fas fa-angle-left"></i></p>
                </a>
            </li>
        </ul>
    </nav>
    <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>