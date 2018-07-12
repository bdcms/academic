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
    	$data = DB::table('tbl_profiles')  
    			->where('teacher_id',$get_id)  
    			->first(); 
    	$statement = view('pages/profile_content')
    		->with('profile_data',$data); 

    	return view('profile_layout')
    		->with('pages/profile_content',$statement);
 
    }

     

    
}
