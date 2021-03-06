<?php 
	$get_id = Session::get('get_id');
	$datas = DB::table('tbl_sections')
			->where('teacher_id', $get_id)
			->first();  
?>
<div class="container_section">
	<div class="pageheader has-bg" style="background-image:url({{URL::to("$datas->public_cover")}});">
        <div class="headercontent">
            <div class="section-container">
                <h1 class="title">Publications</h1>
            </div>
        </div>
    </div>
</div>
<div class="container_section container_section_bg">
	<div class="col-sm-3 col-md-3 col-lg-3"> 
         <h3>Filter by type:</h3>
	</div>
	<div class="col-sm-6 col-md-6 col-lg-6"> 
      <div class="container-fluid">
        <div class="collapse navbar-collapse bs-example-js-navbar-collapse">
          <ul class="nav navbar-nav filter-navbar-nav">
            <li class="dropdown open all_type">
              <a target="_blank" id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                All Types (15) 
              </a>
              <ul class="dropdown-menu" aria-labelledby="drop1">
                <li><a href="#">All Types (15)</a></li>
                <li><a href="#">Journal (5)</a></li> 
                <li><a href="#">Confarence (10)</a></li> 
              </ul>
            </li> 
          </ul> 
        </div><!-- /.nav-collapse -->
      </div><!-- /.container-fluid -->
    
	</div>
	
</div>
 
<div class="container_section"> 
    	<div class=" page_content_wrapper">
		<div class="col-sm-1 col-md-1 col-lg-1"></div>
		<div class="col-sm-10 col-md-10 col-lg-10">
			 <div class="row">
				{{--  <div class="fac-pagination"><span aria-current="page" class="page-numbers current">1</span>
					<a class="page-numbers" href="page/2/index.html">2</a>
					<a class="next page-numbers" href="page/2/index.html">Next »</a></div> --}}
				@php
					$publications = DB::table('tbl_publications')->where('pub_teacher_id', $get_id)->get(); 
				@endphp
				@forelse($publications as $pub)
				<div class="item">
					<div class="pubmain pub-has-thumbnail">
						<div class="pub-thumb">
							<img width="113" height="150" src="{{url($pub->pub_cover)}}" class="attachment-medium size-medium wp-post-image" alt="">
						</div> 
						<div class="pub-contents">
							<h4 class="pubtitle"><a href="pubs/pub1-7-copy/index.html">{{$pub->pub_name}}</a></h4>
							<div class="pubcontents">
								
								<a href="pubtype/journal-paper/index.html"><span class="label label-warning">Journal Paper</span></a>
								<div class="pubauthor">{{$pub->pub_way}}</div><!-- .pubauthor -->
								<div class="pubcite"> {{$pub->pub_short_desc}}</div><!-- .pubcite -->
								<div class="pubyear">Publication year: {{$pub->pub_date}}</div><!-- .pubyear -->
							</div><!-- .pubcontents -->
						</div><!-- .pub-contents -->
						<div class="clearfix"></div>
					</div> 
				</div>
				@empty
				<p>no date found!</p>
				@endforelse
			 
				{{-- <div class="fac-pagination"><span aria-current="page" class="page-numbers current">1</span>
					<a class="page-numbers" href="page/2/index.html">2</a>
					<a class="next page-numbers" href="page/2/index.html">Next »</a></div> --}}
			</div>
		</div>
	</div> 
</div>
 
 