<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class HomeController extends Controller
{
    public function index(){

    	$data = DB::table('tbl_profiles')   
    			->get(); 
    	$statement = view('pages/landing_content')
    		->with('profile_data',$data); 
    	return view('landing_layout')
    		->with('pages/landing_content',$statement);

    	// return view('pages/landing_content');
    }

     
}
