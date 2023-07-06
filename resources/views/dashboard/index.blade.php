@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <h6>Welcome Back, {{ auth()->user()->name }}</h6>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="card bg-primary text-white text-center border-0" style="width: 18rem;">
                <div class="card-body">
                    <h1><i class="bi bi-house-door-fill"></i></h1>
                  <h5 class="card-title">{{ $houses->count() }} Listings</h5>
                </div>
                <div class="card-footer bg-secondary">
                    <a href="/dashboard/houses" class="card-link text-decoration-none fw-medium text-white">More info <i class="bi bi-arrow-right"></i></a>
                </div>
              </div>
        </div>
        <div class="col-lg-3">
            <div class="card bg-warning text-white text-center border-0" style="width: 18rem;">
                <div class="card-body">
                    <h1><i class="bi bi-book"></i></h1>
                  <h5 class="card-title">{{ $posts->count() }} Articles</h5>
                </div>
                <div class="card-footer bg-secondary">
                    <a href="/dashboard/posts" class="card-link text-decoration-none fw-medium text-white">More info <i class="bi bi-arrow-right"></i></a>
                </div>
              </div>
        </div>
        <div class="col-lg-3">
            <div class="card bg-success text-white text-center border-0" style="width: 18rem;">
                <div class="card-body">
                    <h1><i class="bi bi-person-circle"></i></h1>
                  <h5 class="card-title">{{ $users->count() }} User</h5>
                </div>
                <div class="card-footer bg-secondary">
                    <a href="/dashboard/users" class="card-link text-decoration-none fw-medium text-white">More info <i class="bi bi-arrow-right"></i></a>
                </div>
              </div>
        </div>
        <div class="col-lg-3">
            <div class="card bg-danger text-white text-center border-0" style="width: 18rem;">
                <div class="card-body">
                    <h1><i class="bi bi-envelope-fill"></i></h1>
                  <h5 class="card-title">{{ $contacts->count() }} Contacts</h5>
                </div>
                <div class="card-footer bg-secondary">
                    <a href="/dashboard/contacts" class="card-link text-decoration-none fw-medium text-white">More info <i class="bi bi-arrow-right"></i></a>
                </div>
              </div>
        </div>
    </div>
@endsection