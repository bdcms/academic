<?php 
	$get_id = Session::get('get_id');
	$datas = DB::table('tbl_sections')
			->where('teacher_id', $get_id)
			->get();  
?>
@foreach($datas as $data)
<div class="container_section ">
	<div class="pageheader has-bg" style="background-image:url({{URL::to("$data->train_cover")}});">
        <div class="headercontent">
            <div class="section-container">
                <h1 class="title">Training</h1>
            </div>
        </div>
    </div>
</div>
@endforeach
<div class="page_content_wrapper project_section_item training_section_item section_bg">
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			<?php 
				$get_id = Session::get('get_id');
				$datas = DB::table('tbl_trainings')
						->where('teacher_id', $get_id)
						->get();   
			?>
			@if($datas !="[]")
			@foreach($datas as $data)
			<?php $rand = str_random(6);?>
	    <div class="panel panel-default"> 
	        <div class="panel-heading" role="tab" id="headingOne"> 
	        	<div class="wrap" target="_blank" role="button" data-toggle="collapse" data-parent="#accordion" href="#training1" aria-expanded="false" aria-controls="training1" class="collapsed"> 
	        		<div class="meta"><h3>{{$data->title}}</h3> </div>
	        	</div> 
	        </div>
	        <div id="training1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 187px;">
	          <div class="panel-body">
	            <h5>Training Name:<strong> {{$data->title}}</strong></h5> 
	            <h5>Training Duration: <strong> {{$data->duration}}</strong></h5> 
	            <h5>Training Institute: <strong> {{$data->org_name}}</strong></h5>
	             <strong>About Training:</strong> {!!$data->desc!!}
	          </div>
	        </div>
	    </div>
	    @endforeach
	    @else
	    <h5 style="text-align: center;">No Record Found.</h5>
	    @endif
	     

		      

	       
	    </div>
</div>