@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Users</h1>
    </div>
    @if (session()->has('success'))
      <div class="alert alert-success col-lg-8" role="alert">
        {{ session('success') }}
      </div>
    @endif
    <div class="table-responsive">
      <a href="/dashboard/users/create" class="btn btn-dark rounded-0 fw-medium mb-3">ADD USER</a>
        <table class="table table-striped table-bordered table-hover table-sm">
          <thead class="text-center">
            <tr>
              <th scope="col">No</th>
              <th scope="col">Name</th>
              <th scope="col">Username</th>
              <th scope="col">Email</th>
              <th scope="col">Gender</th>
              <th scope="col">Date of Birth</th>
              <th scope="col">Address</th>
              <th scope="col">Phone</th>
              {{-- <th scope="col">Action</th> --}}
            </tr>
          </thead>
          <tbody>
            @foreach ($users as $user)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->username }}</td>
                <td>{{ $user->email }}</td>
                <td>
                  @if (($user->jk) == 1)
                      Laki-laki
                  @else
                      Perempuan
                  @endif
                </td>
                <td>{{ $user->tanggal_lahir }}</td>
                <td>{{ $user->alamat }}</td>
                <td>{{ $user->no_hp }}</td>
                {{-- <td>
                    <a href="/dashboard/users/{{ $user->username }}" class="badge bg-info"><i class="bi bi-eye"></i></a>
                    <a href="/dashboard/users/{{ $user->username }}/edit" class="badge bg-warning"><i class="bi bi-pencil-square"></i></a>
                    <form action="/dashboard/users/{{ $user->username }}" method="POST" class="d-inline">
                      @method('delete')
                      @csrf
                      <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><i class="bi bi-x-circle"></i></button>
                    </form>
                </td>  --}}
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
@endsection