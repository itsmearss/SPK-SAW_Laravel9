@extends('layouts.main')

@section('container')
     <div class="header">
        <div class="box-header">
            <div class="box">
                <div class="header-container">
                    <div class="title mt-5">
                        <h1 class="animate__animated animate__fadeInUp"> Find The Perfect <br> House 
                            <br> For You.
                        </h1>
                        <p class="animate__animated animate__fadeInUp animate__delay-1s">It's great to be home!</p>
                    </div>
                    {{-- <form action="" class="animate__animated animate__fadeInUp animate__delay-1s">
                        <input type="text" placeholder="Find your House..."/>
                        <button>Submit</button>
                    </form> --}}
                    <div class="info animate__animated animate__fadeInUp animate__delay-1s">
                        <div class="box">
                            <h1>{{ $count_house->count() }} <i class="fa-solid fa-arrow-up"></i></h1>
                            <p>Property in website</p>
                        </div>
                        <div class="box">
                            <h1>{{ $count_article->count() }} <i class="fa-solid fa-arrow-up"></i></h1>
                            <p>Our Articles</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box">
                <img src="img/hero.jpg" alt="pexel.com">
            </div>
        </div>
    </div>
    {{-- End Header --}}

    {{-- Best Listings --}}
    <section id="premium">
        <div class="container-fluid py-5 mt-2 px-5">
            <h2 class="text-center fw-bold" data-aos="fade-up" data-aos-duration="1000">Premium Listings</h2>
            <p class="text-center" data-aos="fade-up" data-aos-duration="1000">Premium listings are listings from trusted agents</p>
            <div class="row mt-5">
                @foreach ($houses as $house)
                <div class="col-sm-3">
                    <div class="card mb-3" data-aos="fade-up" data-aos-duration="1000">
                        <p class="position-absolute px-3 py-2 mt-2 ms-2" style="background-color: rgba(0, 0, 0, 0.7); border-radius: 3px;"><a href="" class="text-decoration-none text-white">{{ ($house->status == "1") ? 'Dijual' : 'Disewa' }}</a></p>
                        @if ($house->main_image)
                        <div style="overflow:hidden" class="mt-3 mb-3">
                             <img src="{{ asset('storage/'.$house->main_image) }}" alt="{{ $house->nama_rumah }}" style="height: 250px; width: 100%" class="img-fluid">
                        </div>
                        @else
                        <img src="https://source.unsplash.com/500x500?property" class="card-img-top" alt="..." width="100%" height="230px">
                        @endif
                        <div class="card-body">
                          <h6 class="card-title fw-bold"><a href="/houses/{{ $house->slug }}" class="text-decoration-none text-dark">{{ $house->nama_rumah }}</a></h6>
                          {{-- <small>{{ $house->author->name }}</small> --}}
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
        </div>
    </section>
    {{-- End Best Listings --}}

    {{-- Paralax --}}
    <div class="bg-fixed">
        <h1>ARS PROPERTY</h1>
    </div>
    {{-- End Paralax --}}

    {{-- Why Choose Us --}}
    <section id="why">
        <div class="container-fluid py-5 px-5">
            <h2 class="text-center fw-bold" data-aos="fade-up" data-aos-duration="1000">Why Choose Us</h2>
            <p class="text-center" data-aos="fade-up" data-aos-duration="1000">We provide the most complete and reliable property advertising services</p>
            <div class="row mt-5">
                <div class="col-sm-4">
                    <div class="card" data-aos="fade-up" data-aos-duration="1000">
                        <div class="mx-auto mt-5 mb-4 text-center">
                            <img src="icon/award.gif" alt="" width="30%">
                        </div>
                        <div class="card-body text-center">
                          <h5 class="card-title fw-bold">Certified</h5>
                          <p class="card-text text-secondary">has a certificate and is registered to guarantee the quality of the house</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="card" data-aos="fade-up" data-aos-duration="1000">
                        <div class="mx-auto mt-5 mb-4 text-center">
                            <img src="icon/social-care.gif" alt="" width="30%">
                        </div>
                        <div class="card-body text-center">
                          <h5 class="card-title fw-bold">Various Properties Available</h5>
                          <p class="card-text text-secondary">Providing various property options for investors and buyers/tenants in finding the right property.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="card" data-aos="fade-up" data-aos-duration="1000">
                        <div class="mx-auto mt-5 mb-4 text-center">
                            <img src="icon/idea.gif" alt="" width="30%">
                        </div>
                        <div class="card-body text-center">
                          <h5 class="card-title fw-bold">Much Easier Searcher</h5>
                          <p class="card-text text-secondary">System updates have improved listing search performance, making it much easier and faster.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- End Why Choose Us --}}

    {{-- Artikel Kami --}}
    <section id="arc">
        <div class="container-fluid py-5 px-5">
            <h2 class="text-center fw-bold" data-aos="fade-up" data-aos-duration="1000">Our Most Popular Articles</h2>
            <p class="text-center" data-aos="fade-up" data-aos-duration="1000">Collection of all property articles</p>
            <div class="row mt-5">
                @foreach ($posts as $post)
                <div class="col-sm-3">
                    <div class="card mb-3" data-aos="fade-up" data-aos-duration="1000">
                        <p class="position-absolute px-3 py-2 mt-2 ms-2" style="background-color: rgba(13, 110, 253, 0.7); border-radius: 3px;"><a href="/artikel?category={{ $post->category->slug }}" class="text-decoration-none text-white">{{ $post->category->name }}</a></p>
                        <img src="https://source.unsplash.com/500x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                        <div class="card-body">
                            <p class="card-text text-secondary mb-2"><i class="fa-sharp fa-regular fa-calendar"></i>  {{ $post->created_at->diffForHumans() }}</p>
                            <h6 class="card-title"><a href="/artikel/{{ $post->slug }}" class="text-decoration-none text-dark fw-bold">{{ $post->title }}</a></h6>
                            <p class="card-text text-secondary mb-3">{{ $post->excerpt }}</p>
                            <a href="/artikel/{{ $post->slug }}" style="color: rgb(13, 110, 253);" class="fw-bold">READ MORE</a>
                        </div>
                      </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
