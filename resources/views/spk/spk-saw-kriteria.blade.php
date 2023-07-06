@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Help choose the best housing for you.</p>
            <h4 class="fw-bolder">SAW - Kriteria</h4>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th class="text-center">ID</th>
                                <th>Kriteria</th>
                                <th>Bobot</th>
                                <th>Label</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($kriterias as $kriteria)
                                <tr>
                                    <td class="text-center">{{ $kriteria->id }}</td>
                                    <td>{{ $kriteria->kriteria }}</td>
                                    <td><input type="number" name="k1" value="{{ $kriteria->bobot }}" style="width: 200px" class="text-center" readonly></td>
                                    <td>{{ $kriteria->label }}</td>
                                    <td><a href="/spk/saw/kriteria/{{ $kriteria->id }}/edit" class="btn btn-warning"><i class="bi bi-pencil-square"></i></a></td>
                                </tr>
                            @endforeach
                                <tr>
                                    <td></td>
                                    <td>Jumlah Bobot</td>
                                    <td><input type="number" name="k1" value="{{ $bobot }}" style="width: 200px" class="text-center" readonly></td>
                                    <td>
                                        @if ($bobot == 1)
                                            Jumlah bobot = 1, silahkan lanjutkan
                                        @else
                                            Jumlah bobot harus = 1!
                                        @endif
                                    </td>
                                    <td></td>
                                </tr>
                        </tbody>
                    </table>
                </div>
            <div class="d-flex justify-content-between">
                <a href="/spk" class="btn btn-danger col-lg-3 rounded-0 fw-bold">HALAMAN AWAL</a>
                @if ($bobot == 1)
                    <a href="/spk/saw/normalisasi" class="btn btn-dark col-lg-3 rounded-0 fw-bold" style="background-color: black">NORMALISASI</a>
                @else
                    
                @endif
            </div>
        </div>
    </section>
@endsection