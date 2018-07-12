<div class="container_section ">
	<div class="pageheader has-bg" style="background-image:url(images/lego-349955_1920.jpg);">
        <div class="headercontent">
            <div class="section-container">
                <h1 class="title">Research</h1>
            </div>
        </div>
    </div>
</div>
<div class="page_content_wrapper section_bg">
	<div class="col-sm-8 col-md-8 col-lg-8">
		<div class="page_heading home_page_h"> 
			<h2> Recent Research Topics</h2>
		</div>
		<p>Recent trends in deep-submicron very large-scale integration (VLSI) circuit technology have resulted in new requirements for algorithms in integrated circuit layout. Much of my work centers on new formulations that capture performance and density criteria in the physical layout phases of computer-aided design (CAD). Our results include near-optimal approximation algorithms for such computationally difficult problems as minimum-cost Steiner tree routing, low-skew clock networks, cost-radius tradeoffs, bounded-density trees, circuit probe testing, high-performing Elmore-based constructions, layout density control, and improved manufacturability.</p>
		<div class="page_heading home_page_h"> 
			<h2> Some Heading</h2>
		</div>
		<p>Recent trends in deep-submicron very large-scale integration (VLSI) circuit technology have resulted in new requirements for algorithms in integrated circuit layout. Much of my work centers on new formulations that capture performance and density criteria in the physical layout phases of computer-aided design (CAD). Our results include near-optimal approximation algorithms for such computationally difficult problems as minimum-cost Steiner tree routing, low-skew clock networks, cost-radius tradeoffs, bounded-density trees, circuit probe testing, high-performing Elmore-based constructions, layout density control, and improved manufacturability.</p>
	</div>
	<div class="col-sm-4 col-md-4 col-lg-4">
		<div class="wpb_wrapper">
			<div class="page_heading education_heading"> 
				<h3> Interests</h3>
			</div>
			<ul class="ul-boxed list-unstyled">
				<?php 
					$get_id = Session::get('get_id');
					$datas = DB::table('tbl_awards')
							->where('awr_teacher_id', $get_id)
							->get();  
				?>
				@foreach($datas as $data)
				<li class="">{{$data->awr_name}}</li> 
				@endforeach
		</div>
	</div>
</div>
<div class="page_content_wrapper section_bg">
	<div class="page_heading education_heading"> 
		<h3> Laboratory Personel</h3>
	</div>
	<div class="col-sm-8 col-md-8 col-lg-8">
		<div class="wpb_wrapper">
			<div class="lab-carousels-wrapper lab-110776332">
			<div class="labp-heads-wrap "> 
			<div class="caroufredsel_wrapper" style="display: block; text-align: start; float: none; position: absolute; top: 0px; right: 0px; bottom: -20px; left: 0px; z-index: auto; width: 576px; height: 250px; margin: 0px; overflow: hidden; cursor: move;">
				<div class="lab-carousel" style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 138px; margin: 0px; width: 1576px; height: 100px;">
					<div class="lab-item-image">
						<img src="images/woman-578429_1920.jpg" alt="James Doe" class="img-circle lab-img" style="z-index: 1; width: 100px; height: 100px; margin-top: 50px; margin-right: 0px; margin-left: 0px; opacity: 0.2;">
					</div>
					<div class="lab-item-image">
						<img src="images/lab4.jpg" alt="Nadja Sriram" class="img-circle lab-img" style="z-index: 2; width: 150px; height: 150px; margin-top: 30px; margin-right: -25px; margin-left: -25px; opacity: 1; display: inline-block;">
					</div>
					<div class="lab-item-image" style="margin-right: 138px;">
						<img src="images/lab2.jpg" alt="Pauline Doe" class="img-circle lab-img" style="z-index: 1; width: 100px; height: 100px; margin-top: 50px; margin-right: 0px; margin-left: 0px; opacity: 0.2;">
					</div>
					<div class="lab-item-image">
						<img src="images/lab2.jpg" alt="Marcell Doe" class="img-circle lab-img" style="z-index: 1; width: 100px; height: 100px; margin-top: 50px; margin-right: 0px; margin-left: 0px; opacity: 0.2;">
					</div>
					<div class="lab-item-image">
						<img src="images/lab3.jpg" alt="Sarah Doe" class="img-circle lab-img" style="z-index: 1; width: 100px; height: 100px; margin-top: 50px; margin-right: 0px; margin-left: 0px; opacity: 0.2;">
					</div>
				</div>
			</div> 
			<div>
				<a href="#" class="prev" style="display: block;"><i class="fa fa-chevron-circle-left"></i></a>
				<a href="#" class="next" style="display: block;"><i class="fa fa-chevron-circle-right"></i></a>
			</div>
			</div>
				<div class="lab-details">
					<div class="lab-item-info"><h3>James Doe</h3><h4>Postdoctoral fellow</h4>
						<a href="#" class="btn btn-info">Follow</a>
					</div>
					<div class="lab-item-info" style="display: block;"><h3>Nadja Sriram</h3><h4>Research Assistant</h4>
					</div>
					<div class="lab-item-info"><h3>Pauline Doe</h3><h4>Summer Intern</h4>
						<a href="http://themeforest.net/item/faculty-responsive-academic-wordpress-theme/6817161" class="btn btn-info">External link</a>
					</div>
					<div class="lab-item-info"><h3>Marcell Doe</h3><h4>Postdoctoral fellow</h4>
						<a href="http://owwwlab.com/wp-faculty/another-page/" class="btn btn-info">Internal Link</a>
					</div>
					<div class="lab-item-info"><h3>Sarah Doe</h3><h4>Postdoctoral fellow</h4>
						<a href="http://facebook.com/" class="btn btn-info">Facebook</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-4 col-md-4 col-lg-4">
		 <div class="wpb_wrapper">
			<div class="page_heading education_heading"> 
				<h3> Great lab Personel!</h3>
			</div>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

		</div> 
	</div>
</div>