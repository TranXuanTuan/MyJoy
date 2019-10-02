@extends('layouts.admin.master')

@section('title', '| Edit Menu')

@section('content')
<div class="row">

    <div class="col-md-8 col-md-offset-2">

        <h1>Edit Menu</h1>
        <hr>
            {{ Form::model($menu, array('route' => array('menus.update', $menu->id), 'method' => 'PUT')) }}
            <div class="form-group">

            {{ Form::label('MenuName', 'Menu Name') }}
            {{ Form::textarea('menu_name', null, array('class' => 'form-control')) }}<br>

            {{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

            {{ Form::close() }}
    </div>
    </div>
</div>

@endsection