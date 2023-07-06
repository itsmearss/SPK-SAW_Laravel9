<nav class="navbar navbar-expand-lg sticky-top">
    <div class="container-fluid mx-4 py-0 px-4">
      <a class="navbar-brand" href="#">ARSPROPERTY</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto ms-auto">
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Home") ? 'active' : '' }}" href="/">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Dijual") ? 'active' : '' }}" href="/jual">DIJUAL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Disewa") ? 'active' : '' }}" href="/sewa">DISEWA</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Decision Support Systems") ? 'active' : '' }}" href="/spk">SPK</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "About") ? 'active' : '' }}" href="/about">ABOUT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Contact") ? 'active' : '' }}" href="/contact">CONTACT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "All Posts") ? 'active' : '' }}" href="/artikel">ARTICLE</a>
          </li>
          {{-- <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li> --}}
        </ul>
        {{-- <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>  --}}
        @auth
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            {{ auth()->user()->name }}
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item fw-bold" href="#"><i class="fa-solid fa-plus"></i> ADD LISTING</a></li>
            <li><hr class="dropdown-divider"></li>
            <li>
              <form action="/logout" method="POST">
                @csrf
                <button type="submit" class="dropdown-item fw-bold">LOGOUT <i class="fa-solid fa-right-from-bracket"></i></button>
              </form>
            </li>
          </ul>
        </li>
        @else
          <a href="/login" class="btn btn-dark"><i class="fa-solid fa-right-to-bracket"></i> LOGIN</a>
        @endauth
      </div>
    </div>
  </nav>