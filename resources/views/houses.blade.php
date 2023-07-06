@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Rumah {{ $title }}</h2>
            <p class="text-center">Beranda / Rumah {{ $title }}</p>
            <div class="row mt-5 pt-5">
                <div class="col-sm-4">
                    {{-- <a href="" class="btn btn-dark">FIlter</a> --}}
                </div>
                <div class="col-sm-4 text-center">
                    <p>
                        <small>
                            Displays {{ $houses->count() }} Houses <br>
                            Latest Update 2023
                        </small>
                    </p>
                </div>
                <div class="col-sm-4 text-end pb-0">
                    {{-- <a href="" class="btn btn-dark">Short By</a> --}}
                </div>
            </div>
            <div class="row">
                @foreach ($houses as $house)
                <div class="col-sm-3">
                    <div class="card mb-3" data-aos="fade-up" data-aos-duration="1000">
                        <p class="position-absolute px-3 py-2 mt-2 ms-2" style="background-color: rgba(0, 0, 0, 0.7); border-radius: 3px;"><a href="" class="text-decoration-none text-white">{{ ($house->status === 1) ? 'Dijual' : 'Disewa' }}</a></p>
                        @if ($house->main_image)
                        <div style="max-height: 416px; overflow:hidden" class="mt-3 mb-3">
                             <img src="{{ asset('storage/'.$house->main_image) }}" alt="{{ $house->nama_rumah }}"  style="width: 100%; height: 250px" class="img-fluid">
                        </div>
                        @else
                        <img src="https://source.unsplash.com/500x500?property" class="card-img-top" alt="..." width="100%" height="230px">
                        @endif
                        <div class="card-body">
                            <h6 class="card-title fw-bold"><a href="/houses/{{ $house->slug }}" class="text-decoration-none text-dark">{{ $house->nama_rumah }}</a></h6>
                          <p class="card-text text-secondary">{{ $house->kota }}, {{ $house->provinsi }}</p>
                          <div class="d-flex flex-row justify-content-center text-center text-secondary">
                            <div class="p-1 mx-3">
                                <i class="fa-solid fa-bed"></i>
                                <p>{{ $house->kamar_tidur }} KT</p>
                            </div>
                            <div class="p-1 mx-3">
                                <i class="fa-solid fa-shower"></i>
                                <p>{{ $house->kamar_mandi }} KM</p>
                            </div>
                            <div class="p-1 mx-3">
                                <i class="fa-sharp fa-solid fa-house-chimney"></i>
                                <p>{{ $house->luas_bangunan }} m2</p>
                            </div>
                            <div class="p-1 mx-3">
                                <i class="fa-solid fa-ruler-combined"></i>
                                <p>{{ $house->luas_tanah }} m2</p>
                            </div>
                          </div>
                        </div>
                        <div class="card-footer py-3">
                          <div class="d-flex flex-row justify-content-between">
                            <div class="p-1">
                                <h6 class="fw-bold mb-0">IDR {{ $house->harga }} M</h6>
                              </div>
                              <div class="p-1">
                                <i class="fa-sharp fa-regular fa-bookmark"></i>
                              </div>
                          </div>
                        </div>
                      </div>
                </div>
                @endforeach
            </div>
            <div class="" data-aos="fade-up" data-aos-duration="1000">
                {{ $houses->links() }}
            </div>
        </div>
    </section>
@endsection
