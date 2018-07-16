<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\UserLoginRequest;
use DB;
use Session;
use input;
use validator;
use view;
use Redirect;   
session_start();
class LoginController extends Controller
{
    //
    public function User_Login(UserLoginRequest $request){
    	 
    	$email = $request->login_email;
		$password = md5($request->login_pass); 
		
		$result = DB::table('tbl_profiles')
			->where('email', $email)
			->where('password', $password)
			->first(); 
			if ($result) {
				Session::put('fullname', $result->fullname);
				Session::put('teacher_id', $result->teacher_id); 
				Session::put('image', $result->image);
				return Redirect::to('/Dashboard');
			}else{
				Session::put('message','Email or Password invalid'); 
				return Redirect::to("/");
			}
    } 
}
