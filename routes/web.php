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



Auth::routes();

Auth::routes(['verify' => true]);

Route::get('/', 'HomeController@index')->name('home');

Route::get('/', 'PostController@index')->name('home');

Route::resource('posts', 'PostController');

Route::get('/user/verify/{token}', 'Auth\RegisterController@verifyUser');


Route::namespace('Admin')
    ->prefix('admin')
    ->group(function () {
    	Route::resource('admin_posts', 'AdminPostController');
        Route::resource('users', 'UserController');
        Route::resource('roles', 'RoleController');
		Route::resource('permissions', 'PermissionController');
		Route::resource('menus', 'MenuController');
		Route::resource('submenus','SubMenuController');
    });


