@extends('layouts.admin.master')

@section('title', '| Create New SubMenu')

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create New SubMenu</h1>
        <hr>

        {{ Form::open(array('route' => 'submenus.store')) }}
        {{ csrf_field() }}
        <div class="form-group">
            {{ Form::label('SubMenuName', 'SubMenuName') }}
            {{ Form::text('SubMenuName', null, array('class' => 'form-control')) }}
            <br>       
            <select class="form-control" name="Menu_id">
                        <option value="">----------Select Menu----------</option>
                        @foreach($menus as $menu)
                        <option value="{{$menu->id}}">{{$menu-> MenuName}}</option>
                        @endforeach
            </select>
            {{ Form::submit('Create SubMenu', array('class' => 'btn btn-success btn-lg btn-block')) }}
            {{ Form::close() }}
        </div>
        </div>
    </div>

@endsection