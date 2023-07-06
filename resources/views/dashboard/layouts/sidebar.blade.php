<nav id="sidebarMenu" style="margin-top: -5px" class="col-md-3 col-lg-2 d-md-block bg-dark sidebar collapse">
    <div class="position-sticky pt-3 sidebar-sticky">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard')? 'active' : '' }}" aria-current="page" href="/dashboard">
            <span data-feather="home" class="align-text-bottom"></span>
            Dashboard
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/houses*')? 'active' : '' }}" href="/dashboard/houses">
            <span data-feather="file" class="align-text-bottom"></span>
            Houses
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/posts*')? 'active' : '' }}" href="/dashboard/posts">
            <span data-feather="file" class="align-text-bottom"></span>
            Articles
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/users*')? 'active' : '' }}" href="/dashboard/users">
            <span data-feather="file" class="align-text-bottom"></span>
            Users
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/contacts*')? 'active' : '' }}" href="/dashboard/contacts">
            <span data-feather="file" class="align-text-bottom"></span>
            Contacts
          </a>
        </li>
      </ul>

      {{-- <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-body-secondary text-uppercase">
        <span>Saved reports</span>
        <a class="link-secondary" href="#" aria-label="Add a new report">
          <span data-feather="plus-circle" class="align-text-bottom"></span>
        </a>
      </h6>
      <ul class="nav flex-column mb-2">
        <li class="nav-item">
          <a class="nav-link" href="#">
            <span data-feather="file-text" class="align-text-bottom"></span>
            Current month
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">
            <span data-feather="file-text" class="align-text-bottom"></span>
            Last quarter
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">
            <span data-feather="file-text" class="align-text-bottom"></span>
            Social engagement
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">
            <span data-feather="file-text" class="align-text-bottom"></span>
            Year-end sale
          </a>
        </li>
      </ul> --}}
    </div>
  </nav>