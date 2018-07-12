@extends('landing_layout')
@section('content')
	<section class="section_bg">
		<div class="container">
			<div class="home__page_heading">
				<h2>Sart a Teacher's New profile</h2>
			</div>
		</div>
	</section>

	<section> 
		<div class="container">  
			<div class="signup_form_ signup_form_rules"> 
				<div class="col-sm-12 col-md-2 col-lg-2"></div>
				<div class="col-sm-12 col-md-10 col-lg-10"> 
					<p>All of text field are required. </p> 
					<span>Insert the accurate Token which provided you by NWU authority. </span>
					 </br>
					 
     
				</div>
			</div>
			<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> </div>
					  	<div class="col-sm-12 col-md-9 col-lg-9"> 
					  		@if(Session::get('message'))
						      <p class=" <?php echo Session::get('suc_class')?> flush_msg">
						        <?php 
						            $message = Session::get('message'); 
						            if($message){
						              echo $message;
						              Session::put('message',null);
						            }
						          ?>
						        </p>
						    @endif
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"><div class="row">
						 	 
						</div>
						</div>
				  	</div>
			<div class="signup_form_">  
			  
			 	<form method="POST" action="{{URL('/Application')}}" enctype="multipart/form-data"> 
			 		{{csrf_field()}}

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Full Name:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="text"  name="fullname" class="form-control {{ $errors->has('fullname') ? 'has-error':''}}" placeholder="Name" value="{{Request::old('fullname')}}">
					    	<span class="error_message">{{ $errors->first('fullname')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"><div class="row">
						 	 
						</div>
						</div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Email Address:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="email" name="email" class="form-control {{ $errors->has('email') ? 'has-error':''}}" placeholder="Email" value="{{Request::old('email')}}">
					    	<span class="error_message">{{ $errors->first('email')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1">  </div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Password:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="password" name="password" class="form-control {{ $errors->has('password') ? 'has-error':''}}" placeholder="Password" value="{{Request::old('password')}}">
					    	<span class="error_message">{{ $errors->first('password')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Re-password:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="password" name="repassword" class="form-control {{ $errors->has('repassword') ? 'has-error':''}}" placeholder="Re-password" value="{{Request::old('repassword')}}">
					    	<span class="error_message">{{ $errors->first('repassword')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1">
							
						</div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Contact No:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="number" name="contact" class="form-control {{ $errors->has('contact') ? 'has-error':''}}" placeholder="Number" value="{{Request::old('contact')}}">
					    	<span class="error_message">{{ $errors->first('contact')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Position:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="text" name="position" class="form-control {{ $errors->has('position') ? 'has-error':''}}" placeholder="Position" value="{{Request::old('position')}}">
					    	<span class="error_message">{{ $errors->first('position')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Depertment Name:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="text" name="dept_name" class="form-control {{ $errors->has('dept_name') ? 'has-error':''}}" placeholder="Depertment" value="{{Request::old('dept_name')}}">
					    	<span class="error_message">{{ $errors->first('dept_name')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Date of Birth:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="date" name="birth_date" class="form-control {{ $errors->has('birth_date') ? 'has-error':''}}" placeholder="Birth Date" value="{{Request::old('birth_date')}}">
					    	<span class="error_message">{{ $errors->first('birth_date')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div> 
				  	

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Last Institute:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="text" name="last_institute" class="form-control {{ $errors->has('last_institute') ? 'has-error':''}}" placeholder="Institute" value="{{Request::old('last_institute')}}">
					    	<span class="error_message" >{{ $errors->first('last_institute')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Token:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="text" name="token" class="form-control {{ $errors->has('token') ? 'has-error':''}}" placeholder="Token" value="{{Request::old('token')}}">
					    	<span class="error_message">{{ $errors->first('token')}} </span>
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1">Image:</label>
					  	</div>
					  	<div class="col-sm-12 col-md-9 col-lg-9">
					    	<input type="file" name="image" class="form-control" placeholder="Birth Date">
						</div>
						<div class="col-sm-12 col-md-1 col-lg-1"></div>
				  	</div>

				  	<div class="form-group">
					  	<div class="col-sm-12 col-md-2 col-lg-2"> 
					    	<label for="exampleInputEmail1"> </label>
					  	</div> 
					  	<div class="col-sm-12 col-md-3 col-lg-3"> 
					  		<button type="submit" class="btn btn-default">Submit</button>
						</div>  
				  	</div> 
				</form>
			</div>
		</div>
	</section>
@endsection