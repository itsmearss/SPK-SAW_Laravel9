@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Help choose the best housing for you.</p>
            <form action="/spk/alternatives" method="POST">
                @csrf
                <h4 class="fw-bolder">Add Alternatives</h4>
                <div class="flex-row d-flex justify-content-between">
                    <div class="mb-3 col-lg-8 d-flex">
                        <select class="form-select rounded-1" name="house">
                          @foreach ($houses as $house)
                              <option value="{{ $house}}" selected>
                                @if ($house->status == 1)
                                    Dijual
                                @else
                                    Disewa
                                @endif
                                 - {{ $house->nama_rumah }} - Price: {{ $house->harga }}M</option>
                          @endforeach
                        </select>
                    </div>
                    <div class="mb-3 d-flex">
                        <button type="submit" class="btn btn-dark rounded-0" style="background-color: black">ADD</button>
                    </div>
                </div>
            </form>
            @if (session()->has('success'))
                <div class="alert alert-success col-lg-8" role="alert">
                    {{ session('success') }}
                </div>
            @endif
           <div class="table-responsive">
            <table class="table table-striped">
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>ID Alt</th>
                    <th>Nama Rumah</th>
                    <th>Price</th>
                    <th>LB</th>
                    <th>LT</th>
                    <th>KT</th>
                    <th>KM</th>
                    <th>DL</th>
                    {{-- <th>TD</th> --}}
                    <th class="text-center">View</th>
                    <th class="text-center">Delete</th>
                </tr>
                @foreach ($alternatives as $alternative)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $alternative->id_rumah }}</td>
                    <td>{{ $alternative->alternative }}</td>
                    <td>{{ $alternative->nama_rumah }}</td>
                    <td>{{ $alternative->harga }}</td>
                    <td>{{ $alternative->luas_bangunan }}</td>
                    <td>{{ $alternative->luas_tanah }}</td>
                    <td>{{ $alternative->kamar_tidur }}</td>
                    <td>{{ $alternative->kamar_mandi }}</td>
                    <td>{{ $alternative->daya_listrik }}</td>
                    <td class="text-center"><a href="/houses/{{ $alternative->slug }}" class="badge bg-info text-center"><i class="bi bi-eye"></i></a></td>
                    {{-- <td>{{ $alternative->tahun_dibangun }}</td> --}}
                    <td class="text-center">
                        <form action="/spk/alternatives/{{ $alternative->id }}" method="POST" class="d-inline">
                            @method('delete')
                            @csrf
                            <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><i class="bi bi-x-circle"></i></button>
                          </form>
                    </td>
                </tr>
                @endforeach
            </table>
           </div>
            <div class="d-flex justify-content-between">
                <a href="/" class="btn btn-danger col-lg-3 rounded-0 fw-bold">CANCEL</a>
                <a href="/spk/saw/kriteria" class="btn btn-dark col-lg-3 rounded-0 fw-bold" style="background-color: black">LAKUKAN SAW</a>
                <a href="/spk/matriks" class="btn btn-dark col-lg-3 rounded-0 fw-bold" style="background-color: black">LAKUKAN AHP</a>
            </div>
            <div class="mt-5">
                <h5 class="fw-bold">Keterangan: </h5>
                <table>
                    <tr>
                        <td style="width: 20px">1.</td>
                        <td style="width: 50px">Price</td>
                        <td style="width: 20px">=</td>
                        <td>Harga</td>
                    </tr>
                    <tr>
                        <td style="width: 20px">2.</td>
                        <td style="width: 50px">LB</td>
                        <td style="width: 20px">=</td>
                        <td>Luas Bangunan</td>
                    </tr>
                    <tr>
                        <td style="width: 20px">3.</td>
                        <td style="width: 50px">LT</td>
                        <td style="width: 20px">=</td>
                        <td>Luas Tanah</td>
                    </tr>
                    <tr>
                        <td style="width: 20px">4.</td>
                        <td style="width: 50px">KT</td>
                        <td style="width: 20px">=</td>
                        <td>Kamar Tidur</td>
                    </tr>
                    <tr>
                        <td style="width: 20px">5.</td>
                        <td style="width: 50px">KM</td>
                        <td style="width: 20px">=</td>
                        <td>Kamar Mandi</td>
                    </tr>
                    <tr>
                        <td style="width: 20px">6.</td>
                        <td style="width: 50px">DL</td>
                        <td style="width: 20px">=</td>
                        <td>Daya Listrik</td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
@endsection
