@extends('layouts.admin.content')

@section('title', '| Create News ')

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create New </h1>
        <hr>

        {{ Form::open(array('route' => 'admin_news.store')) }}

        <div class="form-group">
            {{ Form::label('title', 'Title') }}
            {{ Form::text('title', null, array('class' => 'form-control')) }}
            <br>
            {{ Form::label('body', ' Description') }}
            {{ Form::text('description', null, array('class' => 'form-control')) }}
            <br>
            {{ Form::label('body', ' Content') }}
            {{ Form::textarea('content', null, array('class' => 'form-control')) }}
            <br>

            {{ Form::submit('Create New', array('class' => 'btn btn-success btn-lg btn-block')) }}
            {{ Form::close() }}
        </div>
        </div>
    </div>

@endsection