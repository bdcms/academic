<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class SignupController extends Controller
{
    public function index(){
    	$position = DB::table('tbl_positions') ->get();  
    	$statement = view('pages/signup')
    		->with('datas',$position); 
    	return view('landing_layout')
    		->with('pages/signup',$statement); 
    }
}
