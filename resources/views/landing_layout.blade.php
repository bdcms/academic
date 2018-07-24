<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
   
    <title>Academic|NWU</title>

    <!--[if (gt IE 8) | (IEMobile)]><!-->
    <link rel="stylesheet" href="{{asset('public/css/step3.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/bootstrap.css')}}">  
	
	<link rel="stylesheet" href="{{asset('public/font/css/font-awesome.css')}}" />
	<link rel="stylesheet" href="{{asset('public/font/css/font-awesome.min.css')}}" />
    <link rel="stylesheet" href="{{asset('public/css/style.css')}}">  
	
	<link rel="stylesheet" href="{{asset('css/animate.css')}}"> 
 	<link rel="alternate" type="application/json+oembed" href="js/embedc0ed.json?url=http%3A%2F%2Fowwwlab.com%2Fwp-faculty-2%2Fresearch%2F" />
	<link rel="alternate" type="text/xml+oembed" href="js/embedd134?url=http%3A%2F%2Fowwwlab.com%2Fwp-faculty-2%2Fresearch%2F&amp;format=xml" />
    <!--<![endif]-->
    <!--[if (lt IE 9) & (!IEMobile)]>
    <link rel="stylesheet" href="css/ie.css">
    <![endif]-->
   
</head>
<body>

<!-- <div id="preloader">
	<div class="preloader-container">
		<img src="images/preloader.gif" class="preload-gif" alt="preload-image">
	</div>
</div>  -->

<div id="inner-wrap"> 	
	<!-- ================== Manu html Start ======================= -->
	<div class="menu_wrap"> 
		<div id="sidebar" class="menu" style=" background-image: url({{URL::to('/public/images/sidebg-1.jpg')}});">	
			<div id="profile" class="clearfix">
              <div class="portrate">
                <a href="{{URL('/')}}">
                  <img src="{{URL::to('public/images/logo.png')}}" alt="Jane Doe">
                </a>
              </div>
              <div class="title">
                  <h6>North Western University</h6>
                  <p>Khulna,Bangladesh</p>
              </div>   
          	</div>  
			<div id="main-nav" class="nwuteacher_login" style="padding-bottom: 57px;"> 
				
			    @if ( Session::get('message') != '' )
		            <div class='alert alert-warning'>
		                {{ Session::get('message') }}
		            </div>
		        @endif 
	        	<form autocomplete='off' action="{{route('postLogin')}}" method="POST">
	        		{{csrf_field()}}
					<div class="form-group"> 
					    <input  autocomplete='off' type="text" class="form-control" name='email' required placeholder="Email">  
					</div>
					<div class="form-group"> 
					    <input autocomplete='off' type="password" class="form-control" name='password' required placeholder="Password">  
					</div> 
					 
					<div class="form-group">  
					 <button type="submit" class="btn btn-primary btn-block btn-flat"><i class='fa fa-lock'></i> {{trans("crudbooster.button_sign_in")}}</button>
					</div>
				</form>



			{{-- 	@if ( Session::get('message') != '' )
            <div class='alert alert-warning'>
                {{ Session::get('message') }}
            </div>
        @endif

        <p class='login-box-msg'>{{trans("crudbooster.login_message")}}</p>
        <form autocomplete='off' action="{{ route('postLogin') }}" method="post">
            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>
            <div class="form-group has-feedback">
                <input autocomplete='off' type="text" class="form-control" name='email' required placeholder="Email"/>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input autocomplete='off' type="password" class="form-control" name='password' required placeholder="Password"/>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div style="margin-bottom:10px" class='row'>
                <div class='col-xs-12'>
                    <button type="submit" class="btn btn-primary btn-block btn-flat"><i class='fa fa-lock'></i> {{trans("crudbooster.button_sign_in")}}</button>
                </div>
            </div>

            <div class='row'>
                <div class='col-xs-12' align="center"><p style="padding:10px 0px 10px 0px">{{trans("crudbooster.text_forgot_password")}} <a
                                href='{{route("getForgot")}}'>{{trans("crudbooster.click_here")}}</a></p></div>
            </div>
        </form> --}}





				<ul id="myTabs" class="nav nav-tabs" role="tablist">   
			      <li><a href="{{ URL::to('/Signup') }}">Sign Up</a></li>  
			    </ul>
			</div> 

			  
		</div>	
	</div>	
	<!-- ================== Manu html Exit ======================= --> 
<!-- ========================================= Container html Start ============================================================= -->
		
 
<div class="tab-content custom_container">
	@yield('content')
</div>


<!-- ========================================= Container html Exit ============================================================= -->
 
	
		
</div>
 

<script src="{{asset('public/js/jquery.js')}}"></script> 
<script src="{{asset('public/js/script.js')}}"></script>
<script src="{{asset('public/js/lab.js')}}"></script>
<script src="{{asset('public/js/bootstrap/bootstrap.min.js')}}"></script>
<script src="{{asset('public/js/jquery.carouFredSel-6.2.1-packeddf38.js?ver=3.14.0')}}"></script>
<script src="{{asset('public/js/bootstrap/bootstrap-select.js')}}"></script>
<script src="{{asset('public/js/responsive-menu/modernizr.js')}}"></script>
<script src="{{asset('public/js/responsive-menu/main.js')}}"></script>
<script src="{{asset('public/js/wow.min.js')}}"></script>
<script src="{{asset('public/js/custom.js')}}"></script>
 
<script type="text/javascript" id="lab-carousel">(function($){
	$(".lab-110776332").LabCarousel();
	$( document ).ajaxComplete(function() {
		$(".lab-110776332").LabCarousel();
    }); 
})(jQuery);
</script>

</body>
</html>