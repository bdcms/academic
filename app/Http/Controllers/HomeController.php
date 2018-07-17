<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class HomeController extends Controller
{
    public function index(){

<<<<<<< HEAD
    	$data = DB::table('tbl_profiles')->where('status',1)->get(); 
=======
    	$data = DB::table('tbl_profiles')   
    			->get(); 
>>>>>>> 42240ad081d0f9ad9c616ba3a956ef2c64d440e6
    	$statement = view('pages/landing_content')
    		->with('profile_data',$data); 
    	return view('landing_layout')
    		->with('pages/landing_content',$statement);

    	// return view('pages/landing_content');
    }

     
}
