@extends('dashboardadmin.layouts.main')

@section('container')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
</div>

<!-- Content Row -->
<div class="row">

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Listings</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $houses->count() }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-home fa-2x text-gray-300"></i>
                    </div>
                </div>
                <a href="/dashboardadmin/houses" class="btn btn-primary btn-icon-split mt-3">
                    <span class="text">More Info</span>
                    <span class="icon text-white-50">
                        <i class="fas fa-arrow-right"></i>
                    </span>
                </a>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            Articles</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $posts->count() }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-newspaper fa-2x text-gray-300"></i>
                    </div>
                </div>
                <a href="/dashboardadmin/posts" class="btn btn-success btn-icon-split mt-3">
                    <span class="text">More Info</span>
                    <span class="icon text-white-50">
                        <i class="fas fa-arrow-right"></i>
                    </span>
                </a>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Users
                        </div>
                        <div class="row no-gutters align-items-center">
                            <div class="col-auto">
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">{{ $users->count() }}</div>
                            </div>
                           
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-user fa-2x text-gray-300"></i>
                    </div>
                </div>
                <a href="/dashboardadmin/users" class="btn btn-info btn-icon-split mt-3">
                    <span class="text">More Info</span>
                    <span class="icon text-white-50">
                        <i class="fas fa-arrow-right"></i>
                    </span>
                </a>
            </div>
        </div>
    </div>

    <!-- Pending Requests Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-warning shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                            Mail</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $contacts->count() }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-envelope fa-2x text-gray-300"></i>
                    </div>
                </div>
                <a href="/dashboardadmin/contacts" class="btn btn-warning btn-icon-split mt-3">
                    <span class="text">More Info</span>
                    <span class="icon text-white-50">
                        <i class="fas fa-arrow-right"></i>
                    </span>
                </a>
            </div>
        </div>
    </div>
</div>
@endsection