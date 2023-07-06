@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Help choose the best housing for you.</p>
            <h4 class="fw-bolder">SAW - Perankingan</h4>
            <form action="" method="POST">
                @csrf
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th class="text-center">Alternative</th>
                                <th>Nama Rumah</th>
                                <th>Nilai</th>
                                <th class="text-center">View</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($ranks as $rank)
                            <tr>
                                <td class="text-center">{{ $rank->alternative }}</td>
                                <td>{{ $rank->nama_rumah }}</td>
                                <td><input type="number" name="k1" value="{{ $rank->nilai_akhir }}" style="width: 200px" class="text-center" readonly></td>
                                <td class="text-center"><a href="/houses/{{ $rank->lihat }}" class="badge bg-info text-center"><i class="bi bi-eye"></i></a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </form>
            <h5 class="fw-bold text-center">Alternatif terbaik : {{ $ranks[0]->alternative }} dengan nilai akhir {{ $ranks[0]->nilai_akhir }}</h5>
            <div class="d-flex justify-content-between">
                <a href="/spk" class="btn btn-danger col-lg-3 rounded-0 fw-bold">HALAMAN AWAL</a>
            </div>
        </div>
    </section>
@endsection