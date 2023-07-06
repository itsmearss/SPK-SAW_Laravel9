@extends('dashboardadmin.layouts.main')

@section('container')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Houses</h1>
</div>

<!-- Table -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-dark">Houses Data</h6>
    </div>
    <div class="card-body">
        <a href="/dashboardadmin/houses/create" class="btn text-white rounded-5 mb-3" style="background-color: black;">Add Listing</a>
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col" style="width: 400px">Nama Rumah</th>
                        <th scope="col">Pemilik</th>
                        <th scope="col">Kota</th>
                        <th scope="col">Provinsi</th>
                        <th scope="col" style="width: 130px">Harga</th>
                        <th scope="col" style="width: 130px">Action</th>
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
                            <a href="/dashboardadmin/houses/{{ $house->slug }}" class="btn btn-primary btn-circle btn-sm">
                                <i class="fas fa-eye"></i>
                            </a>
                            <a href="/dashboardadmin/houses/{{ $house->slug }}/edit" class="btn btn-success btn-circle btn-sm">
                                <i class="fas fa-edit"></i>
                            </a>
                            <form action="/dashboard/houses/{{ $house->slug }}" method="POST" class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="btn btn-danger btn-circle btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash"></i></button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection