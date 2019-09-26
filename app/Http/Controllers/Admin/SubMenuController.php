<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Menu;
use App\SubCategory;
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
        return view('submenus.index', compact('submenus'));
    }

    public function create()
    {
        $submenus = SubCategory::all();
        return view('submenus.create',compact('submenus'));
    }

    public function store(Request $request)
    {
        $subMenu = new SubCategory();
        $subMenu ->SubMenuName = $request->SubMenuName;
        $subMenu ->Menu_id = $request->Menu_id;
        $subMenu->save();
        return redirect()->route('submenus.index') 
            ->with('flash_message', 'Article,
             '. $subMenu->SubMenuName.' created');;;
    }
}
