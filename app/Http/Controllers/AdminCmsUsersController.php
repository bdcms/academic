<?php namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use Session;
use Request;
use DB;
use CRUDbooster;
use Mail;

class AdminCmsUsersController extends \crocodicstudio\crudbooster\controllers\CBController {


	public function cbInit() {
		# START CONFIGURATION DO NOT REMOVE THIS LINE
		$this->table               = 'cms_users';
		$this->primary_key         = 'id';
		$this->title_field         = "name";
		$this->button_action_style = 'button_icon';	
		$this->button_import 	   = FALSE;	
		$this->button_export 	   = FALSE;	
		# END CONFIGURATION DO NOT REMOVE THIS LINE
	
		# START COLUMNS DO NOT REMOVE THIS LINE
		$this->col = array();
		$this->col[] = array("label"=>"Name","name"=>"name");
		$this->col[] = array("label"=>"Email","name"=>"email");
		$this->col[] = array("label"=>"Contact","name"=>"contact");
		$this->col[] = array("label"=>"Department","name"=>"dept_name","join"=>"tbl_department,department");
		$this->col[] = array("label"=>"Position","name"=>"position","join"=>"tbl_positions,pos_name");
		$this->col[] = array("label"=>"Photo","name"=>"photo","image"=>1);		
		$this->col[] = ["label"=>"status","name"=>"status","callback" => function($row){
				if($row->status == 'Active'){
					return Active;
				}else{
					return Pending;
				}
			}];
		# END COLUMNS DO NOT REMOVE THIS LINE

		# START FORM DO NOT REMOVE THIS LINE
		$this->form = array(); 		
		$this->form[] = array("label"=>"Name","name"=>"name",'required'=>true,'validation'=>'required|alpha_spaces|min:3');
		$this->form[] = array("label"=>"Email","name"=>"email",'readonly'=>true,'type'=>'email','validation'=>'required|email|unique:cms_users,email,'.CRUDBooster::getCurrentId());
		$this->form[] = array("label"=>"Contact","name"=>"contact",'required'=>true,'validation'=>'required|min:11');	 
		$this->form[] = array("label"=>"Department","name"=>"dept_name","type"=>"select","datatable"=>"tbl_department,department",'required'=>true);
		$this->form[] = array("label"=>"Address","name"=>"address",'validation'=>'required');
		$this->form[] = array("label"=>"Birth Date","name"=>"birth_date", "type"=>"date",'validation'=>'required');
		$this->form[] = array("label"=>"Position","name"=>"position","type"=>"select","datatable"=>"tbl_positions,pos_name",'required'=>true);

		$this->form[] = array("label"=>"Note","name"=>"note",'validation'=>'required|min:20');
		$this->form[] = array("label"=>"last Institute","name"=>"last_institute",'validation'=>'required');

		$this->form[] = array("label"=>"Photo","name"=>"photo","type"=>"upload","help"=>"Recommended resolution is 200x200px",'required'=>true,'validation'=>'required|image|max:1000','resize_width'=>90,'resize_height'=>90);											
		$this->form[] = array("label"=>"Privilege","name"=>"id_cms_privileges","type"=>"select","datatable"=>"cms_privileges,name",'required'=>true);						
		$this->form[] = array("label"=>"Password","name"=>"password","type"=>"password","help"=>"Please leave empty if not change");
		# END FORM DO NOT REMOVE THIS LINE
	
		 /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */ 
	        if(CRUDBooster::isSuperadmin()){
		        $this->addaction = array(
		        	[
		        		'label' => 'Active',
		        		'url'	=> url('/useractive/[id]'),
		        		'icon'=>'fa fa-check',
		        		'color'=>'primary',
		        		'showIf'=> '[status] == "0"',
		        		'confirmation' => true
		        	]
		        );
		    } 


		/* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array(
	        	['condition'=>"[status] == '0'","color"=>"warning"]
	        ); 	
	}



		/*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	        if(CRUDBooster::isSuperadmin()){
	        	$query->where('cms_users.id','!=',CRUDBooster::myId())->where('varifyToken',1);
	        }    
	    }




	public function getProfile() {			

		$this->button_addmore = FALSE;
		$this->button_cancel  = FALSE;
		$this->button_show    = FALSE;			
		$this->button_add     = FALSE;
		$this->button_delete  = FALSE;	
		$this->hide_form 	  = ['id_cms_privileges'];

		$data['page_title'] = trans("crudbooster.label_button_profile");
		$data['row']        = CRUDBooster::first('cms_users',CRUDBooster::myId());		
		$this->cbView('crudbooster::default.form',$data);				
	}

	public function useractive($id){
        if(\CRUDBooster::isSuperadmin()){
            $done = DB::table('cms_users')->where('id', $id)->update(['status'=> 'Active']);
            if($done){ 
            	$user = DB::table('cms_users')->where('id',$id)->first(); 
            	// echo $user->email;
            	// exit();
            	Mail::send(['text' => 'pages.mail.confarmMail'],['name','NWU Academic'], function($message) use ($user){
            		$message->to($user->email)
            			->subject('Account Active')
            			->from('nwuacademic@gmail.com');
            	});

            	//storing default cover picture. 
            	$done = DB::table('tbl_sections')->insert([
 							'home_note'		=> 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.',
 							'home_cover'	=> 'https://lorempixel.com/1201/500/',
 							'public_cover'	=> 'https://lorempixel.com/1200/501/',
 							'research_cover'=> 'https://lorempixel.com/1202/500/',
 							'project_cover'	=> 'https://lorempixel.com/1200/502/',
 							'train_cover'	=> 'https://lorempixel.com/1203/500/',
 							'gallary_cover'	=> 'https://lorempixel.com/1200/503/',
 							'contact_cover'	=> 'https://lorempixel.com/1204/500/',
 							'course_cover'	=> 'https://lorempixel.com/1200/504/',
 							'teacher_id'	=> $id,
		            	]);
            		DB::table('tbl_socials')->insert([
            			'facebook'		=> 'http://www.facebook.com',
            			'twitter'		=> 'http://www.twitter.com',
            			'linkedin'		=> 'http://www.linkedin.com',
            			'researchgate'	=> 'https://www.researchgate.net',
            			'teacher_id'	=> $id,
            		]);

                return redirect('/admin/users');
            } 
        }else{
            return redirect('/admin/users');
        }
    }

	public function getEdit($id = 1) {
	  //Create an Auth
	  if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
	    CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
	  }
	  
	  $data = [];
	  $data['page_title'] = 'Edit Security keyword';
	  $data['row'] = DB::table('tbl_securitys')->where('id',$id)->first();
	  
	  //Please use cbView method instead view method from laravel
	  $this->cbView('admin.securityEdit',$data);
	} 

public function socialEdit() {
	//echo $teacherid;
	 // Create an Auth
	  // if(!CRUDBooster::isUpdate() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
	  //   CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
	  // }
	  
	  $data = [];
	  $data['page_title'] = 'Edit your social link';
	  $data['row'] = DB::table('tbl_socials')->where('teacher_id',CRUDBooster::myId())->first();
	  
	  //Please use cbView method instead view method from laravel
	  $this->cbView('admin.socialEdit',$data);
	}	


		
}
