@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Help choose the best housing for you.</p>
            <h4 class="fw-bolder">AHP - Perankingan</h4>
            <form action="" method="POST">
                @csrf
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th class="text-center">Alternative</th>
                            <th>Nama Rumah</th>
                            <th>Nilai</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($ranks as $rank)
                        <tr>
                            <td class="text-center">{{ $rank->alternative }}</td>
                            <td>{{ $rank->nama_rumah }}</td>
							<td><input type="number" name="k1" value="{{ $rank->nilai_akhir }}" style="width: 200px" class="text-center" readonly></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </form>
            <div class="d-flex justify-content-between">
                <a href="/spk" class="btn btn-danger col-lg-3 rounded-0 fw-bold">HALAMAN AWAL</a>
            </div>
        </div>
    </section>
@endsection