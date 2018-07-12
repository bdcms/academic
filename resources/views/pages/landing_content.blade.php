@extends('landing_layout')
@section('content')
<section class="section_bg">
	<div class="container">
		<div class="home__page_heading">
			<h2>North Western University Teacher's Profile</h2>
		</div>
	</div>
</section>
 

<section style="background:#2D364C;"> 
	@foreach($profile_data as $profile)
	<div class="col-lg-3 col-md-3">
		<div class="wrap thumbnail_pic" target="_blank"   href="{{URL::to('/Profile')}}" >
			<div class="image" style="background-image:url( {{ $profile->image }});">
				<div class="imageoverlay">  
					<a target="_blank" href="{{URL::to('/Profile/'.$profile->teacher_id)}}">{{ $profile->fullname }}</a> 
					<p>{{ $profile->dept_name }}</p>
					<span>Assistant Lactural of NWU.</span>
				</div>
			</div>
			<div class="meta"> </div>
		</div>
	</div>
	@endforeach

</section>
@endsection