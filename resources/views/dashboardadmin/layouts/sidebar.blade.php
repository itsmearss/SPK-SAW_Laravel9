<ul class="navbar-nav sidebar sidebar-dark accordion" style="background-color: black;" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/dashboardadmin">
        <div class="sidebar-brand-text mx-3">ArsProperty Admin</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link {{ Request::is('dashboardadmin')? 'active' : '' }}" href="/dashboardadmin">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ Request::is('dashboardadmin/houses*')? 'active' : '' }}" href="/dashboardadmin/houses">
            <i class="fas fa-home"></i>
            <span>Houses</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-newspaper"></i>
            <span>Articles</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/dashboardadmin/posts">All Articles</a>
                <a class="collapse-item" href="/dashboardadmin/categories">Articles Categories</a>
            </div>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ Request::is('dashboardadmin/users*')? 'active' : '' }}" href="/dashboardadmin/users">
            <i class="fas fa-user"></i>
            <span>Users</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ Request::is('dashboardadmin/contacts*')? 'active' : '' }}" href="/dashboardadmin/contacts">
            <i class="fas fa-envelope"></i>
            <span>Mail</span></a>
    </li>
</ul>