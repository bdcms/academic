<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index'); 
Route::get('/Signup', 'SignupController@index'); 
Route::get('/Profile/{id}', 'ProfileController@index'); 
Route::get('/publication', 'ProfileController@publication'); 
Route::post('/Application', 'ApplicationController@teacher_registratin'); 
Route::post('/Login', 'LoginController@User_Login'); 
Route::get('/Dashboard', 'DashboardController@index');  
Route::post('/Contact_info/{id}', 'ContactController@information_submit');
Route::get('/Contact', 'ContactController@index');