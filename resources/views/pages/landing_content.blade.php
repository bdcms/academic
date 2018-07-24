
@extends('landing_layout')
@section('content')

<section class="section_bg">
	<div class="container">
		<div class="home__page_heading">
			<h2>North Western University Teacher's Profile</h2>
		</div>
	</div>
</section>
@if (Session::has('search'))
    <div class="customalert">
       {{ Session::get('search') }}
       @php
       	Session::forget('search');
       @endphp
    </div>
@endif
<form method="POST" action="{{URL('/search')}}"> 
	{{csrf_field()}} 
  	<div class="form-group"> 
	  	<div class="col-sm-6 col-md-3 col-lg-3">
	    	<select class="form-control {{ $errors->has('position') ? 'has-error':''}}" name="department">  
	    		<option value="" >Search by Department</option>
	    		@foreach($deparments as $data)
	    			<option value="{{$data->id}}">{{$data->department}}</option>
	    		@endforeach
	    	</select>
		</div> 
		<div class="col-sm-6 col-md-3 col-lg-3">
	    	<select class="form-control {{ $errors->has('position') ? 'has-error':''}}" name="position">  
	    		<option value="" >Search by Designation</option>
	    		@foreach($positions as $data)
	    			<option value="{{$data->id}}">{{$data->pos_name}}</option>
	    		@endforeach
	    	</select>
		</div> 
		<div class="col-sm-6 col-md-3 col-lg-3">
	    	<input type="text"  name="name" class="form-control" placeholder="Search by name" /> 
		</div> 
		<div class="col-sm-6 col-md-3 col-lg-3">
	    	<input type="submit"  name="submit" class="form-control" value="Search"/> 
		</div> 
  	</div>
</form>

<section style="background:#2D364C;">  
	@forelse($profile_data as $profile) 
		{{-- @continue($profile->id_cms_privileges == 1)  --}}
	<div class="col-lg-3 col-md-3">
		<div class="wrap thumbnail_pic" target="_blank"   href="{{URL::to('/Profile')}}" >
			@if ($profile->photo != 'images/profile.jpg')  
				<div class="image" style="background-image:url( {{ $profile->photo }});">
            @else
				<div class="image" style="background-image:url( {{ url('public/images/profile.jpg') }});"> 
            @endif
				<div class="imageoverlay">  
					<a target="_blank" href="{{URL::to('/Profile/'.$profile->id)}}">{{ $profile->name }}</a> 
					<p>
						@php
							$dep = DB::table('tbl_department')->where('id',$profile->dept_name)->first();
						@endphp
						{{ $dep->department }}
					</p>
					<span>
						@php
							$dep = DB::table('tbl_positions')->where('id',$profile->position)->first();
						@endphp
						{{ $dep->pos_name }}
					</span>
				</div>
			</div>
			<div class="meta"> </div>
		</div>
	</div>
	@empty
		<p class="text-danger"> Sorry no data found!</p>
	@endforelse
</section>
	{{ $profile_data->links() }}

@endsection