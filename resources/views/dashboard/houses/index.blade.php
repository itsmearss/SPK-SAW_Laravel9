@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Houses</h1>
    </div>
    @if (session()->has('success'))
      <div class="alert alert-success col-lg-8" role="alert">
        {{ session('success') }}
      </div> 
    @endif
    <div class="table-responsive">
      <a href="/dashboard/houses/create" class="btn btn-dark rounded-0 fw-medium mb-3">ADD LISTING</a>
        <table class="table table-striped table-bordered table-hover table-sm">
          <thead class="text-center">
            <tr>
              <th scope="col">No</th>
              <th scope="col" style="width: 400px">Nama Rumah</th>
              <th scope="col">Pemilik</th>
              <th scope="col">Kota</th>
              <th scope="col">Provinsi</th>
              <th scope="col">Harga</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($houses as $house)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $house->nama_rumah }}</td>
                <td>{{ $house->author->name }}</td>
                <td>{{ $house->kota }}</td>
                <td>{{ $house->provinsi }}</td>
                <td>Rp. {{ $house->harga }} M</td>
                <td>
                    <a href="/dashboard/houses/{{ $house->slug }}" class="badge bg-info"><i class="bi bi-eye"></i></a>
                    <a href="/dashboard/houses/{{ $house->slug }}/edit" class="badge bg-warning"><i class="bi bi-pencil-square"></i></a>
                    <form action="/dashboard/houses/{{ $house->slug }}" method="POST" class="d-inline">
                      @method('delete')
                      @csrf
                      <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><i class="bi bi-x-circle"></i></button>
                    </form>
                </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
@endsection