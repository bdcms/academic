@extends('profile_layout')
@section('home_section')
 	<div id="myTabContent" class="tab-content custom_container">
			<div role="tabpanel" class="tab-pane fade in active " id="home" aria-labelledby="home-tab" >
			 
				@include('pages.home_content')	 
				 	 
			</div>
			<!-- FIRST/HOME TAB EXIT -->
			<div role="tabpanel" class="tab-pane fade wow slideInRight animated" id="Publications" aria-labelledby="profile-tab"> 
				@include('pages.research_content')
			</div><!-- SECOND/PUBLICATION TAB EXIT -->
			<div role="tabpanel" class="tab-pane fade wow slideInRight animated" id="Research" aria-labelledby="dropdown1-tab">
				@include('pages.publication_content')
			</div><!-- THIRD/RESEARCH TAB EXIT -->
			<div role="tabpanel" class="tab-pane fade wow slideInRight animated" id="Projects" aria-labelledby="dropdown2-tab">
		 		@include('pages.project_content')
			</div><!-- FOURTH/PROJECT TAB EXIT -->

			<!-- Course Section Tab Start -->
			<div role="tabpanel" class="tab-pane fade wow slideInRight animated" id="Course" aria-labelledby="dropdown2-tab">
		 		@include('pages.course_content')
			</div>

			<!-- Training Section Tab Start -->
			<div role="tabpanel" class="tab-pane fade wow slideInRight animated" id="Training" aria-labelledby="dropdown2-tab">
		 		@include('pages.training_content')
			</div>


			<!-- Gallery Section Tab Start  -->
			<div role="tabpanel" class="tab-pane fade wow slideInRight animated" id="Gallery" aria-labelledby="dropdown2-tab">
				@include('pages.gallery_content')
			</div>

			<!------------------ CONTACT SECTION TAB START ----------------------- -->
			<div role="tabpanel" class="tab-pane fade wow slideInRight animated" id="Contact" aria-labelledby="dropdown2-tab">
				@include('pages.contact_content')
			</div>
		</div>
@endsection