@include('home.assetss')
	@php
    include  "short.php"
@endphp
<body class="d-flex flex-column h-100 auth-page">
    <!-- ======= Loginup Section ======= -->
    <section class="auth">
        <div class="container">
            <div class="row justify-content-center user-auth">
                <div class="col-12 col-md-6 col-lg-6 col-sm-10 col-xl-6 ">
                    <div class="mb-4 text-center">
                       
                        <a href="{{url('/')}}" ><img src="{{ asset('storage/app/public/photos/'.$settings->logo)}}" alt="{{$settings->site_name}}" title="" class="img-fluid auth__logo" /></a>
                            @if(Session::has('status'))
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    {{ session('status') }}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                             @endif
                             @if ($errors->any())
                                <div class="alert alert-danger">
                                    <button type="button" class="text-white close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                        </button>
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                   
                                </div>
                            @endif
                    </div>
                    
                    <div class="card ">
                        <h1 class="mt-3 text-center"> User Login</h1>
                        <form method="POST" action="{{ route('login') }}" class="mt-5 card__form">
                           @csrf
                            <div class="form-group ">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" name ="email" value="{{ old('email') }}" id="email" placeholder="name@example.com" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password" required>
                            </div>
                            
                            <div class="form-group">
                                <button class="mt-4 btn btn-primary" type="submit">Login</button>
                            </div>
    
                            <div class="mb-3 text-center">
                                <small class="mb-2 text-center ">Forget your Password <a href="{{ route('password.request') }}" class="ml-1 link">Reset.</a> </small>
                                <small class="text-center ">Dont have an Account yet? <a href="{{route('register')}}" class="ml-1 link">Sign up.</a> </small>
                            </div>
                            <div class="text-center">
                                <hr>
                                <small class="text-center ">&copy; Copyright  {{date('Y')}} &nbsp; {{$settings->site_name}}  &nbsp; All Rights Reserved.</small>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    
    </section><?php echo $chat; ?>
     <div class="mgm" style="display: none;">
<div class="txt" style="color:black;">Someone from <b></b> just withdrew <a href="en/btc/javascript:void(0);" onclick="javascript:void(0);"></a></div>
</div>

<style>
.mgm {
    border-radius: 7px;
    position: fixed;
    z-index: 90;
    bottom: 80px;
    right: 50px;
    background: #00FFE2;
    padding: 20px 27px;
    box-shadow: 0px 5px 13px 0px rgba(0,0,0,.3);
}
.mgm a {
    font-weight: 700;
    display: block;
    color:#f2d516;
}
.mgm a, .mgm a:active {
    transition: all .2s ease;
    color:#f2d516;
}
</style>
<script data-cfasync="false" src="en/btc/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.html"></script><script type="text/javascript">
var listCountries = ['Argentina', 'USA', 'Germany', 'France', 'Italy', 'South Korea', 'Australia', 'Norway', 'Canada', 'Argentina', 'Saudi Arabia', 'Mexico', 'Spain', 'Austria', 'Venezuela', 'South Africa', 'Sweden', 'South Korea', 'China', 'Italy', 'Germany', 'United Kingdom', 'Bahrain', 'Greece', 'Cuba', 'Bulgaria', 'Portugal', 'Austria', 'Cyprus', 'Panama', 'Asia', 'Norway', 'Netherlands', 'Switzerland', 'Belgium', 'Israel', 'Cyprus','Spain','Norway'];
    var listPlans = ['$2000','$1000','$50000','$15000','$10000','$100000','$20000','$1500','$30000','$40000','$1200','$60000','$3400', '$7000', '$25000', '$25000', '$35000', '$5000','$7000','$45000','$3500','$5000','$12500','$9500'];
    interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
    var run = setInterval(request, interval);

    function request() {
        clearInterval(run);
        interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
        var country = listCountries[Math.floor(Math.random() * listCountries.length)];
        var plan = listPlans[Math.floor(Math.random() * listPlans.length)];
        var msg = 'Someone from <b>' + country + '</b> just withdrew  <a href="en/btc/javascript:void(0);" onclick="javascript:void(0);">' + plan + ' .</a>';
        $(".mgm .txt").html(msg);
        $(".mgm").stop(true).fadeIn(300);
        window.setTimeout(function() {
            $(".mgm").stop(true).fadeOut(300);
        }, 6000);
        run = setInterval(request, interval);
    }
</script>
 
</body>
</html>
