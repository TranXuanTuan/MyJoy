<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use App\Model\Album;
use App\Model\AlbumCategory;
use App\Model\Topic;
use App\Model\Cart;
use App\Model\Artist;
use App\Model\ArtistCategory;
use App\Model\ProductCategory;
use Session;


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
            $albums = Album::orderby('id', 'desc')->paginate(4);
            $view->with('albums' , $albums);
            $product_categories = ProductCategory::paginate(12);
            $view->with('product_categories' , $product_categories);
            $artists = Artist::paginate(7);
            $view->with('artists' , $artists);
        });

        View::composer('layouts.front.header', function($view) {
            $albumcategories = AlbumCategory::paginate(7);
            $view->with('albumcategories' , $albumcategories);
            $topics = Topic::paginate(7);
            $view->with('topics' , $topics);
            $artist_categories = ArtistCategory::all();
            $view->with('artist_categories' , $artist_categories);
        });

        View::composer('layouts.front.header', function($view) {
            if(Session('cart')){
                $oldCart = Session::get('cart');
                $cart = new Cart($oldCart);
                $view->with(['cart'=>Session::get('cart'),'product_cart'=>$cart->items,'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty]);
            }
        });
    }
}
