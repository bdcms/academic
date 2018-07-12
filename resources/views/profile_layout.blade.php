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
	
	<link rel="stylesheet" href="{{asset('public/css/animate.css')}}"> 
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
		<div id="sidebar" class="menu" style=" background-image: url(images/sidebg-1.jpg);">	
			<div id="profile" class="clearfix">
              <div class="portrate">
                <a href="index.html">
                  <img src="images/woman-578429_1920.jpg" alt="Jane Doe">
                </a>
              </div>
              <div class="title">
                  <h2>Jane Doe</h2>
                  <h3>MIT University</h3>
              </div>   
          	</div>
	        <div id="main-nav" style="padding-bottom: 57px;"> 
	        	<ul id="myTabs" class="nav nav-tabs" role="tablist"> 

			      <li role="presentation" class="current-menu-item"><a href="#home" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
			      	<i class="fa fa-home"></i><span class="fontawesome-text">Home</span></a></li>

			      <li role="presentation"><a href="#Publications" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
			      	<i class="fa fa-bookmark"></i><span class="fontawesome-text">Publications</span></a></li>

			      <li role="presentation"><a href="#Research" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
			      	<i class="fa fa-area-chart"></i><span class="fontawesome-text">Research</span></a></li>

			      <li role="presentation"><a href="#Projects" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
			      	<i class="fa fa-desktop"></i><span class="fontawesome-text">Projects</span></a></li>

			      	<li role="presentation"><a href="#Training" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
			      	<i class="fa fa-ioxhost"></i><span class="fontawesome-text">Training</span></a></li>

			      	<li role="presentation"><a href="#Gallery" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
			      	<i class="fa fa-camera"></i><span class="fontawesome-text">Gallery</span></a></li>

			      	<li role="presentation"><a href="#Contact" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">
			      	<i class="fa fa-map-marker"> 
	              		</i><span class="fontawesome-text">Contact</span></a></li>  

			    </ul>
	              
			</div>

			<div id="sidebar-footer">
				<div class="social-icons">
					<ul> 
	                    <li><a target="_blank" href="#"><i class="fa fa-facebook"></i></a></li>
	                    <li><a target="_blank" href="#"><i class="fa fa-twitter"></i></a></li> 
	                    <li><a target="_blank" href="#"><i class="fa fa-linkedin"></i></a></li> 
	                    <li><a target="_blank" href="#"><i class="researchgate"></i></a></li> 
	            	</ul>
				</div>  
				<div id="copyright">All rights reserved</div> 
			</div> 
		</div>	
	</div>	
	<!-- ================== Manu html Exit ======================= --> 
<!-- ========================================= Container html Start ============================================================= -->
		
 
		@yield('home_section')


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

})(jQuery);</script>
</body>
</html>