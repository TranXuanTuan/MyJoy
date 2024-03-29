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
    Route::get('add-to-cart/{id}', 'OrderController@getAddtoCart')->name('addtocart');
    Route::get('del-cart/{id}', 'OrderController@getDelItemCart')->name('delcart');
    Route::get('checkout', 'OrderController@getCheckOut')->name('checkout');
    Route::post('checkout', 'OrderController@postCheckOut')->name('checkout');
});

Route::resource('products', 'ProductController');

Route::resource('events', 'EventController');

Route::resource('blogs', 'BlogController');

Route::post('comment/{id}', 'CommentController@postComment')->name('postcomment');

Route::resource('contact', 'ContactController');

Route::resource('topics', 'TopicController');
Route::group(['prefix' => 'topics'], function () {
    Route::get('detail/{id}','TopicController@detail')->name('topicdetail');
});

Route::get('/user/verify/{token}', 'Auth\RegisterController@verifyUser');

Route::post('search', 'HomeController@search');

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
        Route::resource('songcategories','SongCategoryController');
        Route::resource('admin_albumcategories','AlbumCategoryController');
        Route::resource('admin_artistcategories','ArtistCategoryController');
        Route::resource('admin_artists','AdminArtistController');
        Route::resource('admin_albums','AdminAlbumController');
        Route::resource('admin_products','AdminProductController');
        Route::resource('admin_productcategories','ProductCategoryController');
        Route::resource('admin_events','AdminEventController');
    });


