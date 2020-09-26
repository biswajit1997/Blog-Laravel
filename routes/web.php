<?php

use Illuminate\Support\Facades\Route;
use \App\Mail\SendMail;
use \App\Notifications\Comment;
use \App\User;

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
    return view('welcome');
});
Route::get('/postdetails', function () {
    return view('postdetails');
});

Auth::routes();


Route::get('/home', 'HomeController@posts');
Route::post('/tags', 'TagController@create')->name('create');
Route::post('/posts', 'PostsController@create')->name('posts');
Route::get('/postdetails/{id}','PostsController@post')->name('post');
Route::post('/notification', 'HomeController@notification')->name('notification');
Route::get('/notify', 'HomeController@notify');

Route::get('export', 'MyController@export')->name('export');
Route::get('importExportView', 'MyController@importExportView');
Route::post('import', 'MyController@import')->name('import');

