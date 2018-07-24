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
Route::get('/pagenotfound', 'HomeController@pagenotfound')->name('notfound'); 
Route::post('/search', 'HomeController@search'); 
Route::get('/Signup', 'SignupController@index'); 
Route::get('/Profile/{id}', 'ProfileController@index'); 
Route::get('/getProfilesite/', 'ProfileController@getProfilesite')->name('profiledashboard'); 
Route::get('/publication', 'ProfileController@publication'); 

Route::get('/useractive/{id}', 'AdminCmsUsersController@useractive'); 
Route::get('/keywordEdit/', 'AdminCmsUsersController@getEdit'); 
Route::get('/socialEdit/', 'AdminCmsUsersController@socialEdit'); 

Route::post('/securitysave/', 'ApplicationController@saveEdit'); 
Route::post('/saveSocial/', 'ApplicationController@saveSocial'); 

Route::post('/Application', 'ApplicationController@teacher_registratin'); 
Route::post('/Login', 'LoginController@User_Login'); 
Route::get('/Dashboard', 'DashboardController@index');  
Route::post('/Contact_info/{id}', 'ContactController@information_submit');
Route::get('/Contact', 'ContactController@index');




Route::get('verify/{email}/{token}','ApplicationController@verifyUSER')->name('verify'); 