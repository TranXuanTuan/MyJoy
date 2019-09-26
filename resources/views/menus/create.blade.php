@extends('layouts.admin.master')

@section('title', '| Create New Menu')

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create New Menu</h1>
        <hr>

        {{ Form::open(array('route' => 'menus.store')) }}
        {{ csrf_field() }}
        <div class="form-group">
            {{ Form::label('MenuName', 'MenuName') }}
            {{ Form::text('MenuName', null, array('class' => 'form-control')) }}
            <br>       

            {{ Form::submit('Create Menu', array('class' => 'btn btn-success btn-lg btn-block')) }}
            {{ Form::close() }}
        </div>
        </div>
    </div>

@endsection