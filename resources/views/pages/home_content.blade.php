<div class="page_content_wrapper section_bg">
	@if(Session::get('contact_message')) 
        <?php 
            $message = Session::get('contact_message'); 
            $msg_class = Session::get('msg_class');  
          	if($message){ 
          ?>
            	<div class="{{$msg_class}}">
              	{{$message}}
               </div>
             
            <?php
        	}
            Session::put('contact_message', NULL);
            Session::put('msg_class', NULL); 
            ?>
       

    @endif
	<div class="col-sm-6 col-md-6 col-lg-6"></div>
	<div class="col-sm-6 col-md-6 col-lg-6">
		<div class="row">
			<div class="page_heading home_page_h"> 
				<h1> <?php echo $profile_data->fullname; ?></h1>
			</div>	
			<div class="wpb_wrapper"> 
				<?php if($profile_data->note){ echo $profile_data->note;} ?>
			</div>
		</div>
	</div>	
</div>

 
 
<div class="section_bg page_content_wrapper">
	<div class="col-sm-1 col-md-1 col-lg-1"></div>
	<div class="col-sm-5 col-md-5 col-lg-5">
		<div class="wpb_wrapper">
		<div class="page_heading education_heading"> 
			<h3> Education</h3>
		</div>
		<ul class="ul-card ">
			<?php 
				$get_id = Session::get('get_id');
				$datas = DB::table('tbl_educations')
						->where('edu_teacher_id', $get_id)
						->get();   
				if($datas !="[]"){ 
			?> 

			@foreach($datas as $data)
			<li class="">
				<div class="dy">
					<span class="degree">{{$data->edu_degree}}</span>
					<span class="year">{{$data->edu_pass_year}}</span>
				</div>
				<div class="description">
					<p class="what">{{$data->edu_subject}}</p>
					<p class="where">{{$data->edu_board}}</p>
				</div>
			</li> 
			@endforeach
			
			 <?php } else{ echo "<h5 style='text-align: center;' >No Record Found.</h5>";}?>
			

		</ul>
		</div>
	</div> 
	<div class="col-sm-5 col-md-5 col-lg-5">
		<div class="wpb_wrapper">
		<div class="page_heading education_heading"> 
			<h3> Positions</h3>
		</div>
		<ul class="ul-dates ">
		<?php 
			$get_id = Session::get('get_id');
			$datas = DB::table('tbl_expriences')
					->where('exp_teacher_id', $get_id)
					->get(); 

		?>
		@if($datas !="[]")
		@foreach($datas as $exprience)
		<li class="">
		<div class="dates"><span>{{$exprience->exp_end_date}}</span><span>{{$exprience->exp_strt_date}}</span></div>
		<div class="content"><h4>{{$exprience->exp_post_name}}</h4><p>{{$exprience->exp_desc}}</p></div>
		</li>
 		@endforeach
 		@else
 		<h5 style="text-align: center;">No Record Found.</h5>
 		@endif
	</ul>
		</div>
	</div>
</div>
<div class=" page_content_wrapper">
	<div class="col-sm-1 col-md-1 col-lg-1"></div>
	<div class="col-sm-10 col-md-10 col-lg-10">
		 <div class="row">
			<div class="page_heading education_heading"> 
				<h3>Featured Publications</h3>
			</div>	

			<?php 
				$get_id = Session::get('get_id');
				$datas = DB::table('tbl_publications')
						->where('pub_teacher_id', $get_id)
						->orderBy('pub_date', 'DESC')
						->take(2)
						->get();  
			?>
			@if($datas !="[]")
			@foreach($datas as $data)
			<div class="item">
				<div class="pubmain pub-has-thumbnail">
					<div class="pub-thumb">
						<img width="113" height="150" src="{{URL::to("$data->pub_cover")}}" class="attachment-medium size-medium wp-post-image" alt="">
					</div><!-- .pub-thumb -->
					<div class="pub-contents">
						<h4 class="pubtitle"><a href="pubs/pub1-7-copy/index.html">{{$data->pub_name}}</a></h4>
						<div class="pubcontents">
							<a href="pubtype/conference/index.html"><span class="label label-warning">Conference</span></a>
							<a href="pubtype/journal-paper/index.html"><span class="label label-warning">{{$data->pub_way}}</span></a>
							<div class="pubauthor">{{$data->pub_way}}</div><!-- .pubauthor -->
							<div class="pubcite">{{$data->pub_short_desc}}</div><!-- .pubcite -->
							<div class="pubyear">Publication year: {{$data->pub_date}}</div><!-- .pubyear -->
						</div><!-- .pubcontents -->
					</div><!-- .pub-contents -->
					<div class="clearfix"></div>
				</div> 
			</div> 
			@endforeach
			@else
	 		<h5 style="text-align: center;">No Record Found.</h5>
	 		@endif
		</div>
	</div>
</div>
<?php 
	$get_id = Session::get('get_id');
	$datas = DB::table('tbl_sections')
			->where('teacher_id', $get_id)
			->first();  
?>
<div class="section_bg_w_image" style="background-image: url({{URL::to("$datas->home_cover")  }}) !important;">
	<div class="col-sm-3 col-md-3 col-lg-3"></div>
	<div class="col-sm-6 col-md-6 col-lg-6">
		<h2 class="vc_custom_heading">{{$datas->home_note}}</h2>
	</div>
</div>
<div class="section_bg page_content_wrapper">

	<div class="col-sm-1 col-md-1 col-lg-1"></div>
	<div class="col-sm-10 col-md-10 col-lg-10">
		<div class="page_heading education_heading"> 
			<h3> My Awards</h3>
		</div>
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		<?php 
			$get_id = Session::get('get_id');
			$datas  = DB::table('tbl_awards')
					->where('awr_teacher_id', $get_id)
					->get();
				  
		?>
		@if($datas !="[]")
		<?php foreach($datas as $data){ 
			$rand = str_random(6);
			?>
	      <div class="panel panel-default">
	      	<div class="date">{{$data->awr_year}}</div>
	      	<div class="circle"></div>
	        <div class="panel-heading" role="tab" id="headingOne">
	          <h4 class="panel-title">
	            <a target="_blank" role="button" data-toggle="collapse" data-parent="#accordion" href="#{{$rand}}" aria-expanded="false" aria-controls="{{$rand}}" class="collapsed">
	             {{$data->awr_name}}
	            </a>
	          </h4> 
	        </div>
	        <div id="{{$rand}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 0px;">
		          <div class="panel-body">
		            {{$data->awr_desc}}
		          </div>
		        </div>
	      </div>
      	<?php } ?>
       @else
 		<h5 style="text-align: center;">No Record Found.</h5>
 		@endif

       
    </div>
    </div>
	</div>