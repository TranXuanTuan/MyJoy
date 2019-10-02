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
        $submenus = SubCategory::all();
        return view('admin.submenus.index', compact('submenus'));
    }

    public function create()
    {
        $submenus = SubCategory::all();
        return view('admin.submenus.create',compact('submenus'));
    }

    public function store(Request $request)
    {
        $subMenu = new SubCategory();
        $subMenu ->sub_menu_name = $request->sub_menu_name;
        $subMenu ->menu_id = $request->menu_id;
        $subMenu->save();
        return redirect()->route('submenus.index') 
            ->with('flash_message', 'Article,
             '. $subMenu->sub_menu_name.' created');;;
    }
}
