<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Subject;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subjects = Subject::paginate(12);
        return view('subjects.index',compact('subjects'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $subject = Subject::findorfail($id);
        return view('subjects.show', compact('subject'));
    }

}
