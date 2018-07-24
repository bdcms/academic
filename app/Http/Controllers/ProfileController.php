<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
class ProfileController extends Controller
{
    //
    public function index($get_id=null){
        $data=array();
        Session::put('get_id',$get_id);
    	$data['profile_data'] = DB::table('cms_users')->where('id',$get_id)->first(); 

        return view('pages/profile_content',$data);

    	// $statement = view('pages.profile_content')
    	// 	->with('profile_data',$data); 

    	// return view('profile_layout')
    	// 	->with('pages/profile_content',$statement);
 
    } 

    public function getProfilesite(){
        //$data['profile_data'] = DB::table('cms_users')->where('id',CRUDBooster::myId())->first(); 
       // ('pages/profile_content',$profile_data);
        return redirect('/Profile/'.\CRUDBooster::myId());
    }
     

    
}
