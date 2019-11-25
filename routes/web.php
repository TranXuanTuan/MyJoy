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

Route::resource('albums', 'AlbumController');
Route::group(['prefix' => 'albums'], function () {
    Route::get('detail/{id}','AlbumController@detail')->name('albumdetail');
});

Route::resource('artists', 'ArtistController');
Route::group(['prefix' => 'artists'], function () {
    Route::get('detail/{id}','ArtistController@detail')->name('artistdetail');
});

Route::group(['middleware' => 'auth'], function () {
    Route::get('/order/{beat_id}', 'OrderController@index')->name('order');
    Route::group(['prefix' => 'cart', 'as' => 'cart-'], function () {
        Route::get('/', ' @cart')->name('index');
        Route::get('cancel/{id}', 'OrderController@cancel')->name('cancel');
        Route::get('complete/{id}', 'OrderController@complete')->name('complete');
        Route::post('complete/{id}', 'OrderController@postComplete');
    });
});

Route::resource('beats', 'BeatController');

Route::resource('events', 'EventController');

Route::resource('blogs', 'BlogController');

Route::resource('contacts', 'ContactController');

Route::resource('subjects', 'SubjectController');

Route::get('/user/verify/{token}', 'Auth\RegisterController@verifyUser');

Route::namespace('Admin')
    ->prefix('admin')
    ->group(function () {
    	Route::resource('dashboards', 'HomeController');
    	Route::resource('admin_posts', 'AdminPostController');
        Route::resource('users', 'UserController');
        Route::resource('roles', 'RoleController');
		Route::resource('permissions', 'PermissionController');
		Route::resource('admin_topics', 'AdminTopicController');
        Route::resource('admin_blogs','BlogController');
        Route::resource('songs','SongController');
    });


