<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SignupRequest;
use App\cms_user;
use Mail;
Use App\Mail\verifyUser;
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
    	$data['name']			= $request->fullname;
        $data['photo']          = 'images/profile.jpg';
    	$data['email']			= $request->email;
    	$data['password']		= \Hash::make($request->password);
    	$repassword				= $request->repassword;
    	$data['contact']		= $request->contact;
    	$data['birth_date']		= $request->birth_date;
    	$data['dept_name']		= $request->dept_name; 
    	$data['position']		= $request->position;
    	$data['last_institute']	= $request->last_institute;
    	//$data['id_cms_privileges']	= 2; //teacher role
    	$data['varifyToken']	= str_random(25);   
    	$user = cms_user::create($data);  
    	Mail::to($user->email)->send(new verifyUser($user));
        //return $user;

	    $this->_flash_Message('Application submited successfully. Now you need to verify your email address for next process.',''); 
	    return Redirect("/Signup");

    	// $image=$request->file('image');

    	// if($this->validate($request, ['image'=>'mimes:jpeg,jpg,png'])){ 
    	// 	if($image){
	    // 		$image_name = str_random(20);
	    // 		$ext = strtolower($image->getClientOriginalExtension());
	    // 		$image_full_name = $image_name.'.'.$ext;
	    // 		$upload_path="public/uploads/";
	    // 		$image_url=$upload_path.$image_full_name;
	    // 		$success = $image->move($upload_path,$image_full_name);
	    // 		if($success){
	    // 			$data['image']=$image_url;  
 				// 	DB::table('tbl_profiles')->insert($data); 
	    // 			$this->_flash_Message('Application Submited Successfully !!',''); 
	    // 			return Redirect("/Signup");
	    // 		}
	    // 	} 
	    // }else{  
	    // 	$this->_flash_Message('','Application Submited faild !!'); 
	    // 	return Redirect('/Signup');
	    // } 


    } 



//send mail for verification
    public function verifyUSER($email,$token){
 		$user = cms_user::where(['email' =>$email, 'varifyToken' => $token])->first();
        if($user){
            $user->varifyToken = '1'; 
            if($user->save()){
                session()->put('search','Your email verifacation is successfully. Please wait for your admin conformation.'); 
                DB::table('cms_notifications')->insert([
                	'id_cms_users'	=> 1,
                	'content'		=> $user->name.' from '.$user->dept_name.' department is waiting for your approval',
                	'url'			=> url('public/admin/users'),
                	'is_read'		=> 0
                ]);
	    		return Redirect("/");
            }else{
            	session()->put('search','Invalid Email or Token',''); 
	    		return Redirect("/"); 
            }
        }else{
                session()->put('search','Invalid Email or Token',''); 
	    		return Redirect("/"); 
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

	public function saveEdit(Request $request){ 
		$done = DB::table('tbl_securitys')->where('id','1')->update(['keyword' => $request->keyword]);
		if($done){
			return Redirect('keywordEdit/')->with('msg','Security keyword is updated');
		}
		exit();
	}
    public function saveSocial(Request $request){ 
        $this->validate($request,[
                    'facebook'          => 'url', 
                    'twitter'           => 'url', 
                    'linkedin'          => 'url', 
                    'researchgate'      => 'url' 
                ]);
        $done = DB::table('tbl_socials')->where('teacher_id',$request->teacher_id)->update([
                'facebook'      => $request->facebook,
                'twitter'       => $request->twitter,
                'linkedin'      => $request->linkedin,
                'researchgate'  => $request->researchgate
            ]);

        if($done){
            return Redirect('socialEdit/')->with('msg','Social lniks are updated');
        }else{
            return Redirect('socialEdit/')->with('msg','Social links are not updated'); 
        }
        exit();
    }

 
}
