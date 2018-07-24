<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class SignupController extends Controller
{
    public function index(){
    	$data['positions'] = DB::table('tbl_positions')->get();  
    	$data['deparments'] = DB::table('tbl_department')->get();  
    	return view('pages.signup',$data);
    	// $statement = view('pages/signup')->with('datas',$position); 

    	// return view('landing_layout')->with('pages/signup',$statement); 
    }
}
