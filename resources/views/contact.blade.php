@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3">
            <h2 class="text-center fw-bolder">Contact Us</h2>
            <p class="text-center mb-5">Please complete the following fields to send us an inquiry.</p>
            @if (session()->has('success'))
            <div class="alert alert-success col-lg-4 mx-auto" role="alert">
                {{ session('success') }}
            </div>
            @endif
                <div class="container mt-2">
                    <div class="row" style="box-shadow: 1px 1px 8px black">
                    <div class="col-sm-4 bg-dark text-white p-5">
                        <h4 class="fw-semibold mb-3 text-white">Let's get in touch</h4>
                        <small class="mb-4 d-block">We're open for any suggestion or just to have a chat</small>
                        <table>
                            <tr class="mb-4">
                                <td style="width: 50px"  class="text-center"><p class="fs-4"><i class="bi bi-geo-alt"></i></p></td>
                                <td><p>Address: Selapura City</p></td>
                            </tr>
                            <tr>
                                <td style="width: 50px"  class="text-center"><p class="fs-4"><i class="bi bi-telephone"></i></p></td>
                                <td><p>Phone: +62 856 4224 0515</p></td>
                            </tr>
                            <tr>
                                <td style="width: 50px"  class="text-center"><p class="fs-4"><i class="bi bi-envelope"></i></p></td>
                                <td><p>Email: annurriyadhus17@gmail.com</p></td>
                            </tr>
                            <tr>
                                <td style="width: 50px"  class="text-center"><p class="fs-4"><i class="bi bi-globe"></i></p></td>
                                <td><p>Website: arsproperty.com</p></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-8 p-5">
                        <h4 class="fw-semibold mb-3">Get in touch</h4>
                        <form action="/contact/store" method="POST">
                            @csrf
                            <div class="row mb-3">
                                <div class="col-lg-6" style="">
                                    <label for="full_name" class="form-label">Full Name</label>
                                    <input type="text" class="form-control rounded-1 @error('name') is-invalid @enderror" id="full_name" name="full_name" placeholder="Full Name" required value="{{ old('name') }}">
                                    @error('name')
                                        <div class="invalid-feedback">
                                          {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                                <div class="col-lg-6">
                                    <label for="email" class="form-label">Email Address</label>
                                    <input type="text" class="form-control rounded-1 @error('email') is-invalid @enderror" id="email" name="email" placeholder="Email" required value="{{ old('email') }}">
                                    @error('email')
                                        <div class="invalid-feedback">
                                          {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="subject" class="form-label">Subject</label>
                                <input type="text" class="form-control rounded-1 @error('subject') is-invalid @enderror" id="subject" name="subject" placeholder="Subject" required value="{{ old('subject') }}">
                                @error('subject')
                                    <div class="invalid-feedback">
                                      {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="message" class="form-label">Message</label>
                                <textarea class="form-control rounded-1 @error('message') is-invalid @enderror" id="message" name="message" rows="3" placeholder="Message" required placeholder="Message"></textarea>
                            </div>
                            <button class="btn btn-dark rounded-1" type="submit">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
@endsection
