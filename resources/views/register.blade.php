<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ $title }}</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body>
    <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
        <div class="card card0 border-0">
            <div class="row d-flex">
                <div class="col-lg-6">
                    <div class="card1 pb-5">
                        <div class="row">
                            <br>
                        </div>
                        <div class="row px-3 justify-content-center border-line">
                            <img src="img/hero.jpg" class="image" style="width: 100%; height: 60%">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card2 card border-0 px-4 py-5">
                        <div class="row mb-4 px-3">
                            <h6 class="mb-0 mr-4 mt-2">Sign Up</h6>
                            <div class="facebook text-center mr-3"><div class="fa fa-facebook"></div></div>
                            <div class="twitter text-center mr-3"><div class="fa fa-twitter"></div></div>
                            <div class="linkedin text-center mr-3"><div class="fa fa-linkedin"></div></div>
                        </div>
                        <div class="row px-3 mb-4">
                            <div class="line"></div>
                            <small class="or text-center">Or</small>
                            <div class="line"></div>
                        </div>
                        <form action="/register" method="POST">
                            @csrf
                            <div class="row px-3 mb-4">
                                <label class="mb-1"><h6 class="mb-0 text-sm">Name</h6></label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" placeholder="Enter your name" required value="{{ old('name') }}">
                                @error('name') 
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div> 
                                @enderror
                            </div>
                            <div class="row px-3 mb-4">
                                <label class="mb-1"><h6 class="mb-0 text-sm">Username</h6></label>
                                <input class="form-control @error('username') is-invalid @enderror" type="text" name="username" placeholder="Enter a your username" required value="{{ old('username') }}">
                                @error('username') 
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div> 
                                @enderror
                            </div>
                            <div class="row px-3 mb-4">
                                <label class="mb-1"><h6 class="mb-0 text-sm">Email Address</h6></label>
                                <input class="form-control @error('email') is-invalid @enderror" type="text" name="email" placeholder="Enter a valid email address" required value="{{ old('email') }}">
                                @error('email') 
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div> 
                                @enderror
                            </div>
                            <div class="row px-0 mb-4">
                                <div class="col-lg-6">
                                    <label class="mb-1" for="jk"><h6 class="mb-0 text-sm">Gender</h6></label>
                                    <select class="form-control" aria-label="Default select example" name="jk" id="jk">
                                        <option value="1">Male</option>
                                        <option value="0">Female</option>
                                    </select>
                                    @error('jk') 
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div> 
                                    @enderror
                                </div>
                                <div class="col-lg-6">
                                    <label class="mb-1" for="jk"><h6 class="mb-0 text-sm">Birth</h6></label>
                                    <input type="date" class="form-control" name="tanggal_lahir" id="tanggal_lahir">
                                    @error('tanggal_lahir') 
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div> 
                                    @enderror
                                </div>
                            </div>
                            <div class="row px-3 mb-4">
                                <label class="mb-1" for="alamat"><h6 class="mb-0 text-sm">Address</h6></label>
                                <textarea name="alamat" id="alamat" cols="30" rows="3" class="form-control" placeholder="Enter your address"></textarea>
                                @error('address') 
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div> 
                                @enderror
                            </div>
                            <div class="row px-3 mb-4">
                                <label class="mb-1" for="no_hp"><h6 class="mb-0 text-sm">Phone Number</h6></label>
                                <input type="text" name="no_hp" class="form-control" id="no_hp" placeholder="ex: +6285642xxxxxx">
                                @error('no_hp') 
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div> 
                                @enderror
                            </div>
                            <div class="row px-3 mb-4">
                                <label class="mb-1"><h6 class="mb-0 text-sm">Password</h6></label>
                                <input class="form-control @error('password') is-invalid @enderror" type="password" name="password" placeholder="Enter password" required value="{{ old('password') }}">
                                @error('password') 
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div> 
                                @enderror
                            </div>
                            <div class="row mb-3 px-3">
                                <button type="submit" class="btn btn-dark text-center rounded-0 fw-bolder" style="background-color: black">Register</button>
                            </div>
                        </form>
                        <div class="row mb-4 px-3">
                            <small class="font-weight-bold">Already Registered? <a class="text-primary " href="/login">Login</a></small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-blue py-4">
                <div class="row px-3">
                    <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2019. All rights reserved.</small>
                    <div class="social-contact ml-4 ml-sm-auto">
                        <span class="fa fa-facebook mr-4 text-sm"></span>
                        <span class="fa fa-google-plus mr-4 text-sm"></span>
                        <span class="fa fa-linkedin mr-4 text-sm"></span>
                        <span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>