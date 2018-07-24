<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class HomeController extends Controller
{
    public function index(){


    	$data['profile_data'] = DB::table('cms_users')->where('status','Active')->paginate(20); 
    	$data['positions'] = DB::table('tbl_positions')->get();  
    	$data['deparments'] = DB::table('tbl_department')->get();  
    	// $statement = view('pages/landing_content')->with('profile_data',$data); 

    	// return view('landing_layout')->with('pages/landing_content',$statement);
    	return view('pages.landing_content',$data);

    	// return view('pages/landing_content');
    }

    public function search(Request $request){
    	$data['positions'] = DB::table('tbl_positions')->get();  
    	$data['deparments'] = DB::table('tbl_department')->get();   
    	$dep = $request->department;
    	$pos = $request->position;
    	$key =  $request->name; 
        $posi = DB::table('tbl_positions')->where('id', $pos)->first();
        $dept = DB::table('tbl_department')->where('id', $dep)->first();
    	if($dep == '' && $pos == '' && $key == ''){
    		return redirect('/')->with('search','Please select one to find someone..');
    	}elseif($dep == '' && $pos == '' && $key != ''){ 
            session()->put('search', 'Search Result For: '.$key);
			$data['profile_data'] = DB::table('cms_users')->where('status','Active')->where('name', 'like', '%'.$key.'%')->paginate(20);  
		}elseif($dep == '' && $pos != '' && $key == ''){
            session()->put('search', 'Search Result For: "'.$posi->pos_name.'"');
			$data['profile_data'] = DB::table('cms_users')->where('status','Active')->where('position', $pos)->paginate(20);  
		}elseif ($dep == '' && $pos != '' && $key != '') {
            session()->put('search', 'Search result for: "'.$key.'" from all "'.$posi->pos_name.'" designation.');
			$data['profile_data'] = DB::table('cms_users')->where('status','Active')->where('name', 'like', '%'.$key.'%')->where('position', $pos)->paginate(20);  
		}elseif ($dep != '' && $pos == '' && $key == '') {
            session()->put('search', 'Search result for: "'.$dept->department.'"');
			$data['profile_data'] = DB::table('cms_users')->where('status','Active')->where('dept_name', $dep)->paginate(20);  
		}elseif ($dep != '' && $pos == '' && $key != '') { 
            session()->put('search', 'Search result for: "'.$key.'" from all "'.$dept->department.'" department.');
			$data['profile_data'] = DB::table('cms_users')->where('status','Active')->where('name', 'like', '%'.$key.'%')->where('dept_name', $dep)->paginate(20);  
		}elseif ($dep != '' && $pos != '' && $key == '') {
            session()->put('search', 'Search result for: "'.$posi->pos_name.'" from all "'.$dept->department.'" department.');
			$data['profile_data'] = DB::table('cms_users')->where('status','Active')->where('dept_name', $dep)->where('position', $pos)->paginate(20); 
		}else{
            session()->put('search', 'Search result for: "'.$key.'" from "'.$posi->pos_name.'" in all "'.$dept->department.'" department.');
			$data['profile_data'] = DB::table('cms_users')->where('status','Active')->where('name', 'like', '%'.$key.'%')->where('dept_name', $dep)->where('position', $pos)->paginate(20); 
		} 

		return view('pages.landing_content',$data); 
    	 
    }

    public function pagenotfound(){
        return view('pages.404');
    }

     
}
