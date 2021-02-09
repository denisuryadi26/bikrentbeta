<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('auth/login');
});

Route::get('/order','OrderController@index');
Route::get('/order/{id}','OrderController@show');

Route::resource('product','ProductController');
Route::resource('transaction','TransactionController');
Route::resource('vendor','VendorController');
Route::resource('user','UserController');
Route::resource('chatroom','ChatroomController');
Route::resource('log','LogController');
// Route::post('multipleproduct','MultipleProductController@upload');
Route::resource('multipleproduct','MultipleProductController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');