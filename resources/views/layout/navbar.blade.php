<nav class="main-header navbar navbar-expand navbar-dark navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
    </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    <li class="nav-item dropdown user-menu">
        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
        <img src="{{asset('assets/dist/img/profile.png') }}" class="user-image img-circle elevation-2" alt="User Image">
        <span class="d-none d-md-inline text-white">Welcome, {{ Auth::user()->name }} <span class="caret"></span></span>
        </a>
        <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <!-- User image -->
        <li class="user-header bg-info">
        <img src="{{asset('assets/dist/img/profile.png') }}" class="img-circle elevation-2" alt="User Image">
        <p>
            Welcome, {{ Auth::user()->name }} <span class="caret"></span>
            <small>Developer</small>
        </p>
        </li>
    </li>
        <!-- Menu Footer-->
    <li class="user-footer">
        <a href="{{asset('user/profile') }}" class="btn btn-default btn-flat">Profile</a>
        <!-- <a href="{{asset('auth/logout') }}" class="btn btn-outline-info btn-flat float-right">Logout</a> -->
        <a class="btn btn-outline-info btn-flat float-right" href="{{ route('logout') }}"
            onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
            {{ __('Logout') }}
        </a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            @csrf
        </form>
    </li>
    </ul>
</nav>