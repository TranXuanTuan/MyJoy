<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Menu;
use App\Model\SubCategory;
use Auth;
use Session;

class SubMenuController extends Controller
{
	public function __construct()
	{
		$this->middleware(['auth', 'isAdmin']);
	}

	public function index()
    {
        $menus = Menu::all();
        $submenus = SubCategory::all();
        return view('admin.submenus.index', compact('submenus'));
    }

    public function create()
    {
        $menus = Menu::all();
        return view('admin.submenus.create',compact('menus'));
    }

    public function store(Request $request)
    {
        $submenus = new SubCategory();
        $submenus ->sub_menu_name = $request->sub_menu_name;
        $submenus ->menu_id = $request->menu_id;
        $submenus->save();
        return redirect()->route('submenus.index') 
            ->with('flash_message', 'Article,
             '. $submenus->sub_menu_name.' created');;;
    }

    public function edit($id)
    {
        $submenu = SubCategory::findOrFail($id);

        return view('admin.submenus.edit', compact('submenu'));
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
            'sub_menu_name'=>'required|max:100',
            
        ]);

        $submenu = SubCategory::findOrFail($id);
        $submenu->sub_menu_name = $request->input('sub_menu_name');
        $submenu->save();

        return redirect()->route('submenus.index', 
            $submenu->id)->with('flash_message', 
            'Article, '. $submenu->sub_menu_name.' updated');
    }

    public function destroy($id)
    {
        $submenu = SubCategory::findOrFail($id);
        $submenu->delete();

        return redirect()->route('submenus.index')
            ->with('flash_message',
             'Article successfully deleted');
    }
}
