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


Route::get('/fire','PostController@fire');
Route::get('/', function () {
    return view('welcome');
})->middleware('auth');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users','PostController@getUser');
Route::post('/post', 'PostController@store');
Route::get('/getcount','PostController@getCount');
Route::get('/allposts',function(){

    return response()->json(\App\Post::all());
});