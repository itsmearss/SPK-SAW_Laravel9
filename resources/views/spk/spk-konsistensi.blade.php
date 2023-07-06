@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Help choose the best housing for you.</p>
            <h4 class="fw-bolder">Konsistensi</h4>
            <input type="number" name="konsistensi" id="konsistensi" value="{{ $konsistensi }}" readonly class="form-control col-lg-6 mb-2">
            @if ( $konsistensi > 0.1)
                <p>Nilai lebih dari 0.1, artinya nilai tidak konsisten. Perbaiki matriks bobot!</p> 
            @else
                <p>Nilai kurang dari 0.1, artinya nilai konsisten. Lanjutkan ke proses selanjutnya!</p>
            @endif
            <div class="d-flex justify-content-between">
                <a href="/spk" class="btn btn-danger col-lg-3 rounded-0 fw-bold">CANCEL</a>
                <a href="/spk/normalisasi-alternatives" class="btn btn-dark col-lg-3 rounded-0 fw-bold" style="background-color: black">NORMALISASI ALTERNATIVES</a>
            </div>
        </div>
    </section>
@endsection