@extends('dashboarduser.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add Listing</h1>
    </div>
 
    <div class="col-lg-8">
        <form action="/user/dashboard/houses" method="POST" class="mb-5" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
              <label for="nama_rumah" class="form-label">Nama Rumah</label>
              <input type="text" class="form-control rounded-1 @error('nama_rumah') is-invalid @enderror" id="nama_rumah" name="nama_rumah" required autofocus value="{{ old('nama_rumah') }}">
              @error('nama_rumah')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="slug" class="form-label">Slug</label>
              <input type="text" class="form-control rounded-1 @error('slug') is-invalid @enderror" id="slug" name="slug" required value="{{ old('slug') }}">
              @error('slug')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            
            <div class="mb-3">
              <label for="status" class="form-label">Status</label>
              <select class="form-select" aria-label="Default select example" name="status" id="status">
                <option value="1">Dijual</option>
                <option value="0">Disewa</option>
              </select>
              @error('status')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="alamat" class="form-label">Alamat</label>
              <input type="text" class="form-control rounded-1 @error('alamat') is-invalid @enderror" id="alamat" name="alamat" required autofocus value="{{ old('alamat') }}">
              @error('alamat')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="row mb-3">
              <div class="col-lg-4">
                <label for="kota" class="form-label">Kota</label>
                <input type="text" class="form-control rounded-1 @error('kota') is-invalid @enderror" id="kota" name="kota" required autofocus value="{{ old('kota') }}">
                @error('kota')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-4">
                <label for="provinsi" class="form-label">Provinsi</label>
                <input type="text" class="form-control rounded-1 @error('provinsi') is-invalid @enderror" id="provinsi" name="provinsi" required autofocus value="{{ old('provinsi') }}">
                @error('provinsi')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-4">
                <label for="kode_pos" class="form-label">Kode Pos</label>
                <input type="text" class="form-control rounded-1 @error('kode_pos') is-invalid @enderror" id="kode_pos" name="kode_pos" required autofocus value="{{ old('kode_pos') }}">
                @error('kode_pos')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
            </div>
            <div class="mb-3">
              <label for="harga" class="form-label">Harga</label>
              <input type="text" class="form-control rounded-1 @error('harga') is-invalid @enderror" id="harga" name="harga" required autofocus value="{{ old('harga') }}">
              @error('harga')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="deskripsi" class="form-label">Deskripsi</label>
              @error('deskripsi')
                  <p class="text-danger">
                    {{ $message }}
                  </p>
              @enderror
              <input id="deskripsi" type="hidden" name="deskripsi" value="{{ old('deskripsi') }}">
              <trix-editor input="deskripsi" class="rounded-1"></trix-editor>
            </div>
            <div class="row mb-3">
              <div class="col-lg-3">
                <label for="luas_bangunan" class="form-label">Luas Bangunan</label>
                <input type="text" class="form-control rounded-1 @error('luas_bangunan') is-invalid @enderror" id="luas_bangunan" name="luas_bangunan" required autofocus value="{{ old('luas_bangunan') }}">
                @error('luas_bangunan')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="luas_tanah" class="form-label">Luas Tanah</label>
                <input type="text" class="form-control rounded-1 @error('luas_tanah') is-invalid @enderror" id="luas_tanah" name="luas_tanah" required autofocus value="{{ old('luas_tanah') }}">
                @error('luas_tanah')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="kamar_tidur" class="form-label">Kamar Tidur</label>
                <input type="text" class="form-control rounded-1 @error('kamar_tidur') is-invalid @enderror" id="kamar_tidur" name="kamar_tidur" required autofocus value="{{ old('kamar_tidur') }}">
                @error('kamar_tidur')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="kamar_mandi" class="form-label">Kamar Mandi</label>
                <input type="text" class="form-control rounded-1 @error('kamar_mandi') is-invalid @enderror" id="kamar_mandi" name="kamar_mandi" required autofocus value="{{ old('kamar_mandi') }}">
                @error('kamar_mandi')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="sertifikat" class="form-label">Sertifikat</label>
                <input type="text" class="form-control rounded-1 @error('sertifikat') is-invalid @enderror" id="sertifikat" name="sertifikat" required autofocus value="{{ old('sertifikat') }}">
                @error('sertifikat')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="lantai" class="form-label">Lantai</label>
                <input type="text" class="form-control rounded-1 @error('lantai') is-invalid @enderror" id="lantai" name="lantai" required autofocus value="{{ old('lantai') }}">
                @error('lantai')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="daya_listrik" class="form-label">Daya Listrik</label>
                <input type="text" class="form-control rounded-1 @error('daya_listrik') is-invalid @enderror" id="daya_listrik" name="daya_listrik" required autofocus value="{{ old('daya_listrik') }}">
                @error('daya_listrik')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="interior" class="form-label">Interior</label>
                <input type="text" class="form-control rounded-1 @error('interior') is-invalid @enderror" id="interior" name="interior" required autofocus value="{{ old('interior') }}">
                @error('interior')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="tahun_dibangun" class="form-label">Tahun Dibangun</label>
                <input type="text" class="form-control rounded-1 @error('tahun_dibangun') is-invalid @enderror" id="tahun_dibangun" name="tahun_dibangun" required autofocus value="{{ old('tahun_dibangun') }}">
                @error('tahun_dibangun')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="kondisi_bangunan" class="form-label">Kondisi Bangunan</label>
                <select class="form-select" aria-label="Default select example" name="kondisi_bangunan" id="kondisi_bangunan">
                  <option value="1">Baru</option>
                  <option value="0">Lama</option>
                </select>
                @error('kondisi_bangunan')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
            </div>
            <button type="submit" class="btn btn-dark rounded-0 fw-medium">Add Listing</button>
          </form>
    </div>

    <script>
        const title = document.querySelector('#nama_rumah');
        const slug = document.querySelector('#slug');

        title.addEventListener('change', function(){
            fetch('/user/dashboard/houses/checkSlug?title=' + title.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
        })

        function previewImage(){
          const image = document.querySelector('#image');
          const imgPreview = document.querySelector('.img-preview');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }
    </script>
@endsection