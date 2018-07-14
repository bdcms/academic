<?php 
	$get_id = Session::get('get_id');
	$datas = DB::table('tbl_sections')
			->where('teacher_id', $get_id)
			->get();  
?>
@foreach($datas as $data)
<div class="container_section ">
	<div class="pageheader has-bg" style="background-image:url({{URL::to("$data->contact_cover")}});">
        <div class="headercontent">
            <div class="section-container">
                <h1 class="title">Contact</h1>
            </div>
        </div>
    </div>
</div>
@endforeach
<div class="section-container section_contact">
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
	<h3>Contact information</h3>
	<form class="form-horizontal" action="{{URL('/Contact_info/'.$get_id)}}" method="post" > 
		{{csrf_field()}}
		<div class="control-group"> 
		    <div class="controls">
		    	<input type="text" name="name" placeholder="Name" value="{{Request::old('name')}}">
		    	<span class="error_message">{{ $errors->first('name')}} </span>
		    	<input type="hidden" name="id" value="{{$get_id}}">
		    </div>
		</div>

		 
		<div class="control-group"> 
		    <div class="controls">
		    	<input type="number" name="contact_num" placeholder="Contact number"value="{{Request::old('contact_num')}}">
		    	<span class="error_message">{{ $errors->first('contact_num')}} </span>
		    </div>
		</div>
		<div class="control-group"> 
		    <div class="controls">
		    	<input type="email" name="email" placeholder="Email" value="{{Request::old('email')}}">
		    	<span class="error_message">{{ $errors->first('email')}} </span>
		    </div>
		</div> 
		<div class="control-group"> 
		    <div class="controls">
		    	<textarea name="message" cols="40" rows="18" class="form-control" placeholder="message..">{{Request::old('message')}}</textarea>  
		    	<span class="error_message">{{ $errors->first('message')}} </span>
		    </div>
		</div>

		  <div class="control-group">
		  	 <label class="control-label"> </label>
		    <div class="controls">  
		    	<button class="send_message" type="submit">Send Message</button> 

		    </div>
		  </div>
		</form>	
	</div>
			