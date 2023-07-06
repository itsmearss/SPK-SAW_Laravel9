@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Help choose the best housing for you.</p>
            <h4 class="fw-bolder">SAW - Edit Kriteria</h4>
            <form action="/spk/saw/kriteria/{{ $kriteria->id }}" method="POST">
                {{-- @method('put') --}}
                @csrf
                <div class="mb-3">
                    <label for="kriteria" class="form-label">Kriteria</label>
                    <input type="text" class="form-control rounded-1 @error('kriteria') is-invalid @enderror" id="kriteria" name="kriteria" required autofocus value="{{ old('kriteria', $kriteria->kriteria) }}" readonly>
                    @error('kriteria')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="bobot" class="form-label">Bobot</label>
                    <input type="text" class="form-control rounded-1 @error('bobot') is-invalid @enderror" id="bobot" name="bobot" value="{{ old('bobot', $kriteria->bobot) }}">
                    @error('bobot')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <button type="submit" class="btn btn-dark rounded-0 fw-bold" style="background-color: black">Simpan</button>
            </form>
            <br>
            <div class="d-flex justify-content-between">
                <a href="/spk" class="btn btn-danger col-lg-3 rounded-0 fw-bold">HALAMAN AWAL</a>
            </div>
        </div>
    </section>
@endsection