<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use App\Model\Album;
use App\Model\AlbumCategory;
use App\Model\Subject;
use App\Model\ArtistCategory;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        View::composer('posts.index', function($view) {
            $albums = Album::orderby('id', 'desc')->paginate(3);
            $view->with('albums' , $albums);
        });

        View::composer('layouts.front.header', function($view) {
            $albumcategories = AlbumCategory::paginate(7);
            $view->with('albumcategories' , $albumcategories);
            $subjects = Subject::paginate(7);
            $view->with('subjects' , $subjects);
            $artist_categories = ArtistCategory::all();
            $view->with('artist_categories' , $artist_categories);
        });



    }
}
