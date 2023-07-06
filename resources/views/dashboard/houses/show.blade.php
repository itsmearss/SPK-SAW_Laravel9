@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div>
                <a href="/dashboard/houses" class="btn btn-success rounded-1"><i class="bi bi-arrow-left"></i> Back</a>
                <a href="/dashboard/houses/{{ $house->slug }}/edit" class="btn btn-warning rounded-1"><i class="bi bi-pencil-square"> Edit</i></a>
                <form action="/dashboard/houses/{{ $house->slug }}" method="POST" class="d-inline">
                    @method('delete')
                    @csrf
                    <button class="btn btn-danger rounded-1" onclick="return confirm('Are you sure?')"><i class="bi bi-x-circle"></i> Delete</button>
                </form>
                <hr>
                <h2 class="fw-bold">{{ $house->nama_rumah }}</h2>
                <section id="house">
                        <div class="row">
                            <img src="https://source.unsplash.com/1600x400?property" alt="">
                        </div>
                        <div class="row my-4 px-3">
                            <div class="col-lg-9">
                                <small class="text-secondary">{{ $house->kota }}, {{ $house->provinsi }}</small>
                                <div class="d-flex flex-row text-secondary mt-2">
                                    <div class="p-1 me-2">
                                        <p><i class="fa-solid fa-bed"></i> {{ $house->kamar_tidur }} KT</p>
                                    </div>
                                    <div class="p-1 mx-2">
                                        <p><i class="fa-solid fa-shower"></i> {{ $house->kamar_mandi }} KM</p>
                                    </div>
                                    <div class="p-1 mx-2">
                                        <p><i class="fa-sharp fa-solid fa-house-chimney"></i> {{ $house->luas_bangunan }} m2</p>
                                    </div>
                                    <div class="p-1 mx-2">
                                        <p><i class="fa-solid fa-ruler-combined"></i> {{ $house->luas_tanah }} m2</p>
                                    </div>
                                </div>
                                <div class="col-lg-8 py-3">
                                    <h5 class="fw-bold">Description</h5>
                                    <small class="text-secondary">{{ $house->deskripsi }}</small>
                                </div>
                                <hr>
                                <div class="row">
                                    <h5 class="fw-bold">Location</h5>
                                    <div class="col-lg-4">
                                        <table>
                                            <tr>
                                                <td class="pe-3 py-3"><small class="fw-bold fs-6">Address</small></td>
                                                <td class="px-3"><small>{{ $house->alamat }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3"><small class="fw-bold fs-6">Province</small></td>
                                                <td class="px-3"><small>{{ $house->provinsi }}</small></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-lg-4">
                                        <table>
                                            <tr>
                                                <td class="pe-3 py-3"><small class="fw-bold fs-6">City</small></td>
                                                <td class="px-3"><small>{{ $house->kota }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3"><small class="fw-bold fs-6">Zip</small></td>
                                                <td class="px-3"><small>{{ $house->kode_pos }}</small></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-lg-4">
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <h5 class="fw-bold mb-3">Property Spesification</h5>
                                    <div class="col-lg-4">
                                        <table>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">ID</small></td>
                                                <td class="px-3"><small>{{ $house->id }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Harga</small></td>
                                                <td class="px-3"><small>Rp. {{ $house->harga }} M</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">L. Bangunan</small></td>
                                                <td class="px-3"><small>{{ $house->luas_bangunan }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Luas Tanah</small></td>
                                                <td class="px-3"><small>{{ $house->luas_tanah}}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Kamar Tidur</small></td>
                                                <td class="px-3"><small>{{ $house->kamar_tidur }}</small></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-lg-4">
                                        <table>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Kamar Mandi</small></td>
                                                <td class="px-3"><small>{{ $house->kamar_mandi }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Sertifikat</small></td>
                                                <td class="px-3"><small>{{ $house->sertifikat }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Lantai</small></td>
                                                <td class="px-3"><small>{{ $house->lantai }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Daya Listrik</small></td>
                                                <td class="px-3"><small>{{ $house->daya_listrik }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Interior</small></td>
                                                <td class="px-3"><small>{{ $house->interior }}</small></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-lg-4">
                                        <table>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Tahun Bangunan</small></td>
                                                <td class="px-3"><small>{{ $house->tahun_dibangun }}</small></td>
                                            </tr>
                                            <tr>
                                                <td class="pe-3 py-2"><small class="fw-bold fs-6">Kondisi Bangunan</small></td>
                                                <td class="px-3"><small>{{ $house->kondisi_bangunan }}</small></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <hr>
                            </div>
                            <div class="col-lg-3">
                                <div class="card rounded-0 p-2">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <img src="https://source.unsplash.com/60x60?people" alt="" width="100%" height="100%">
                                            </div>
                                            <div class="col-lg-9">
                                                <small>{{ $house->author->name }}</small> <br>
                                                <small>{{ $house->author->email }}</small> <br>
                                                <small>{{ $house->author->no_hp }}</small>
                                            </div>
                                        </div>
                                    </div>
                                  </div>
                            </div>
                        </div>
                </section>
        </div>
    </div>
</div>
@endsection