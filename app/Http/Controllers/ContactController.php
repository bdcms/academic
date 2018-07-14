<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\ContactRequest;
use DB;
use Session;
use input;
use validator;
use view;
use redirect; 
session_start();
class ContactController extends Controller
{
    //
    public function index(){
        echo "contact page";
    }


    public function information_submit(ContactRequest $request,$id){
    	$data = array();
    	 $data['name']			=$request->name;
    	 $data['number']		=$request->contact_num;
    	 $data['email']			=$request->email;
    	 $data['message']		=$request->message;
    	 $data['teacher_id']	=$request->id; 

    	$con= DB::table('tbl_contacts') 
    	 ->insert($data);
         if($con==1){ 
            Session::put('con_message','<p style="color:green;font-size:12px;">Message Sending Successfully1 !!</p>'); 
            Session::put('msg_class','alert alert-success'); 
         }else{
    	   Session::put('con_message','<p style="color:red;font-size:12px;">Message Sending faild!!</p>'); 
            Session::put('msg_class','alert alert-danger'); 
         }
	    			return Redirect("/Profile/$id"); 

    }
}
