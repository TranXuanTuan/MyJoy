<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Menu;
use Auth;
use Session;

class MenuController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'isAdmin']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $menus = Menu::all();
        return view('admin.menus.index', compact('menus'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.menus.create');
    }

    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'menu_name'=>'required|max:50',
            ]);

        $menu_name = $request['menu_name'];

        $menus = Menu::create($request->only('menu_name'));

        return redirect()->route('menus.index') 
            ->with('flash_message', 'Article,
             '. $menus->menu_name.' created');;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    /*public function show($id)
    {
        $post = Post::findOrFail($id); 

        return view ('admin_posts.show', compact('post'));
    }
*/
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $menu = Menu::findOrFail($id);

        return view('admin.menus.edit', compact('menu'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'menu_name'=>'required|max:100',
            
        ]);

        $menu = Menu::findOrFail($id);
        $menu->menu_name = $request->input('menu_name');
        $menu->save();

        return redirect()->route('menus.index', 
            $menu->id)->with('flash_message', 
            'Article, '. $menu->menu_name.' updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $menu = Menu::findOrFail($id);
        $menu->delete();

        return redirect()->route('menus.index')
            ->with('flash_message',
             'Article successfully deleted');
    }
}
