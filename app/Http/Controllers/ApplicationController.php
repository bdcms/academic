<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SignupRequest;
use DB;
use Session;
use input;
use validator;
use view;
use redirect; 
session_start();
class ApplicationController extends Controller
{
    //
    public function teacher_registratin(SignupRequest $request){ 
    	$data = array();
    	$data['fullname']		=$request->fullname;
    	$data['email']			=$request->email;
    	$data['password']		=md5($request->password);
    	$repassword				=$request->repassword;
    	$data['contact']		=$request->contact;
    	$data['position']		=$request->position;
    	$data['dept_name']		=$request->dept_name; 
    	$data['birth_date']		=$request->birth_date;
    	$data['last_institute']	=$request->last_institute;
    	$token					=$request->token;  
    	$image=$request->file('image');

    	if($this->validate($request, ['image'=>'mimes:jpeg,jpg,png'])){ 
    		if($image){
	    		$image_name = str_random(20);
	    		$ext = strtolower($image->getClientOriginalExtension());
	    		$image_full_name = $image_name.'.'.$ext;
	    		$upload_path="public/uploads/";
	    		$image_url=$upload_path.$image_full_name;
	    		$success = $image->move($upload_path,$image_full_name);
	    		if($success){
	    			$data['image']=$image_url;  
 					DB::table('tbl_profiles')->insert($data); 
	    			$this->_flash_Message('Application Submited Successfully !!',''); 
	    			return Redirect("/Signup");
	    		}
	    	} 
	    }else{  
	    	$this->_flash_Message('','Application Submited faild !!'); 
	    	return Redirect('/Signup');
	    } 


    }

    private function _flash_Message($success=NULL, $faield=NULL){
		if(!empty($success)){ 
	    	Session::put('message',$success); 
	    	Session::put('suc_class',"alert-success"); 
		}else{
			Session::put('message',$faield); 
	    	Session::put('suc_class',"alert-danger"); 
		} 
		
	}
 
}
