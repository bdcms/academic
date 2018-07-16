<?php 
    $get_id = Session::get('get_id');
    $datas = DB::table('tbl_sections')
            ->where('teacher_id', $get_id)
            ->get();  
?>
 @foreach($datas as $data)
<div class="container_section ">
	<div class="pageheader has-bg" style="background-image:url({{URL::to("$data->gallary_cover")}})">
        <div class="headercontent">
            <div class="section-container">
                <h1 class="title">Gallery</h1>
            </div>
        </div>
    </div>
</div>
@endforeach
<div class="container_section">
	<div class="section color-1" id="gallery-large">
    <div class="section-container">
        
        <ul id="grid" class="grid" style="position: relative; height: 813.062px;">
                                            
            <?php 
                $get_id = Session::get('get_id');
                $datas = DB::table('tbl_gallerys')
                        ->where('teacher_id', $get_id)
                        ->get();   
            ?>
            @if($datas !="[]")
            @foreach($datas as $data)

            <li style="position: absolute; left: 0px; top: 0px;">
                <div>
                    <img alt="image" src="{{URL::to("$data->glry_cover")}}">
                    <a target="blank" href="{{URL::to("$data->glry_cover")}}" class="popup-with-move-anim">
                        <div class="over" style="top: 0%; bottom: 0%;">
                            <div class="comein">
                                <i class="fa fa-search"></i>
                                <div class="comein-bg"></div>
                            </div>
                        </div>
                    </a>
                </div>
            </li>
          
			 @endforeach  
        @else
        <h5 style="text-align: center; color: #fff;">No Record Found.</h5>
        @endif	 
            
                                
        </ul>
        <div class="clearfix"></div>
    </div>

</div>
</div>