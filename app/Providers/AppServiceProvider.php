<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use App\Model\Album;
use App\Model\AlbumCategory;
use App\Model\Topic;
use App\Model\ArtistCategory;
use App\Model\BeatCategory;

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

        View::composer('home', function($view) {
            $albums = Album::orderby('id', 'desc')->paginate(3);
            $view->with('albums' , $albums);
            $beat_categories = BeatCategory::paginate(12);
            $view->with('beat_categories' , $beat_categories);
        });

        View::composer('layouts.front.header', function($view) {
            $albumcategories = AlbumCategory::paginate(7);
            $view->with('albumcategories' , $albumcategories);
            $topics = Topic::paginate(7);
            $view->with('topics' , $topics);
            $artist_categories = ArtistCategory::all();
            $view->with('artist_categories' , $artist_categories);
            
        });



    }
}
