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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', 'PostController@index')->name('home');

/*Route::resource('users', 'UserController');*/

/*Route::resource('roles', 'RoleController');

Route::resource('permissions', 'PermissionController');*/

Route::resource('posts', 'PostController');

Route::get('/user/verify/{token}', 'Auth\RegisterController@verifyUser');


Route::namespace('Admin')
    ->prefix('admin')
    /*->name('admin.')*/
    ->group(function () {
    	Route::resource('admin_posts', 'AdminPostController');
        Route::resource('users', 'UserController');
        Route::resource('roles', 'RoleController');
		Route::resource('permissions', 'PermissionController');
    });