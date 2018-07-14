<?php 
	$get_id = Session::get('get_id');
	$datas = DB::table('tbl_sections')
			->where('teacher_id', $get_id)
			->get();  
?>
@foreach($datas as $data)
<div class="container_section ">
	<div class="pageheader has-bg" style="background-image:url({{URL::to("$data->course_cover")}});">
        <div class="headercontent">
            <div class="section-container">
                <h1 class="title">Course Taken</h1>
            </div>
        </div>
    </div>
</div>
@endforeach
<div class="page_content_wrapper project_section_item training_section_item section_bg">
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			<table class="table">
				      <thead>
				        <tr> 
				          <th>Course Name</th>
				          <th>Course Code</th>
				          <th>Program</th>
				          <th>Course Type</th>
				          <th>Description</th>
				        </tr>
				      </thead>
				      <tbody>
			<?php 
				$get_id = Session::get('get_id');
				$datas = DB::table('tbl_courses')
						->where('teacher_id', $get_id)
						->get();   
			?>
			@if($datas !="[]")
			@foreach($datas as $data)
			<?php $rand = str_random(6);?>
			    
				        <tr class="active"> 
				          <td>{{$data->course_name}}</td>
				          <td>{{$data->course_code}}</td>
				          <td>{{$data->program}}</td>
				          <td>{{$data->course_type}}</td>
				          <td>{{$data->course_desc}}</td>
				        </tr> 

				    
	    @endforeach
	    </tbody>
				</table>
	    @else
	    <h5 style="text-align: center;">No Record Found.</h5>
	    @endif
	     

		      

	       
	    </div>
</div>