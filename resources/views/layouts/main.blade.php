<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ArsProperty | {{ $title }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="../css/style.css">
    
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../img/favicon.png" type="image/x-icon">

    <link rel="stylesheet" href="/css/navbar.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="../css/navbar.css">

    <link rel="stylesheet" href="/css/carousel.css">
    <link rel="stylesheet" href="css/carousel.css">
    <link rel="stylesheet" href="../css/carousel.css">
    <!-- font poppins-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,600;1,700&display=swap" rel="stylesheet">

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

    {{-- Bootstrap Icon --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
    <!-- link remix icon -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!-- link animate style -->
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<body>
    @include('partials.navbar')
    <div class="">
        @yield('container')
    </div>
    @include('partials.footer')
    <script src="js/script.js"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
    <script src="js/jquery.min.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="../js/jquery.min.js"></script>

    <script src="js/popper.js"></script>
    <script src="/js/popper.js"></script>
    <script src="../js/popper.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
    
    <script src="js/main.js"></script>
    <script src="/js/main.js"></script>
    <script src="../js/main.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7deae5118baabe7b","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>

