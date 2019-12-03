<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Admin\ArtistCategoryCreateRequest;
use App\Http\Requests\Admin\ArtistCategoryUpdateRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\ArtistCategory;
use Auth;
use Session;


class ArtistCategoryController extends Controller
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
        $artistcategories = ArtistCategory::all();
        return view('admin.admin_artistcategories.index', compact('artistcategories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.admin_artistcategories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ArtistCategoryCreateRequest $request)
    {
        $this->validate($request, [
            'category_name' => 'required|max:100',
            ]);
        $category_name = $request['category_name'];
       

        $artistCategory = ArtistCategory::create($request->only('category_name'));
        return redirect()->route('admin_artistcategories.index')
                ->with('flash_message','Artist Cateogory successfully added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect('admin/admin_artistcategories'); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $artistCategory = ArtistCategory::findOrFail($id);
        return view('admin.admin_artistcategories.edit', compact('artistCategory'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ArtistCategoryUpdateRequest $request, $id)
    {
        $artistCategory = ArtistCategory::findOrFail($id);
        $artistCategory->category_name = $request['category_name'];
        
        $artistCategory->save();

        return redirect()->route('admin_artistcategories.index', 
            $artistCategory->id)->with('flash_message','Artist successfully edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $artistCategory = ArtistCategory::findOrFail($id);
        $artistCategory->delete();

        return redirect()->route('admin_artistcategories.index')
            ->with('flash_message',
             'Artist successfully deleted');
    }
}
