<?php 
	$get_id = Session::get('get_id');
	$datas = DB::table('tbl_sections')
			->where('teacher_id', $get_id)
			->get();  
?>
@foreach($datas as $data)
<div class="container_section ">
	<div class="pageheader has-bg" style="background-image:url({{URL::to("$data->project_cover")}});">
        <div class="headercontent">
            <div class="section-container">
                <h1 class="title">Projects</h1>
            </div>
        </div>
    </div>
</div>
@endforeach
<div class="page_content_wrapper project_section_item section_bg">
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

		<?php 
				$get_id = Session::get('get_id');
				$datas = DB::table('tbl_projects')
						->where('teacher_id', $get_id)
						->get();   
			?>
			@if($datas !="[]")
			@foreach($datas as $data)
			<?php $rand = str_random(6);?>
	    <div class="panel panel-default"> 
	        <div class="panel-heading" role="tab" id="headingOne"> 
	        	<div class="wrap" target="_blank" role="button" data-toggle="collapse" data-parent="#accordion" href="#{{$rand}}" aria-expanded="false" aria-controls="{{$rand}}" class="collapsed">
	        		<div class="image" style="background-image:url({{URL::to("$data->pro_cover")}});">
	        			<div class="imageoverlay"><i class="fa fa-search"></i></div>
	        		</div>
	        		<div class="meta"><h3>{{$data->pro_name}}</h3><p>{{$data->pro_desc}}</p></div>
	        	</div> 
	        </div>
	        <div id="{{$rand}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 187px;">
	          <div class="panel-body">
	            {{$data->pro_shortdesc}}
	          </div>
	        </div>
	    </div>
	    @endforeach
	    @else
	    <h5 style="text-align: center;">No Record Found.</h5>
	    @endif


	         

	       
	    </div>
</div>