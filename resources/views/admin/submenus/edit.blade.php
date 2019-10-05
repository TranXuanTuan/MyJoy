@extends('layouts.admin.content')

@section('title', '| Edit SubMenu')

@section('content')
<div class="row">

    <div class="col-md-8 col-md-offset-2">

        <h1>Edit SubMenu</h1>
        <hr>
            {{ Form::model($submenu, array('route' => array('submenus.update', $submenu->id), 'method' => 'PUT')) }}
            <div class="form-group">

            {{ Form::label('sub_menu_name', 'Menu Name') }}
            {{ Form::text('sub_menu_name', null, array('class' => 'form-control')) }}<br>

            {{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

            {{ Form::close() }}
    </div>
    </div>
</div>

@endsection