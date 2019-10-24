@extends('layouts.admin.content')

@section('title', '| Edit New')

@section('content')
<div class="row">

    <div class="col-md-8 col-md-offset-2">

        <h1>Edit New</h1>
        @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
        <hr>
            {{ Form::model($new, array('route' => array('news.update', $new->id), 'method' => 'PUT')) }}
            <div class="form-group">
            {{ Form::label('title', ' New Title') }}
            {{ Form::text('title', null, array('class' => 'form-control')) }}<br>

            {{ Form::label('body', 'New Description') }}
            {{ Form::text('description', null, array('class' => 'form-control')) }}<br>

            {{ Form::label('body', 'New Content') }}
            {{ Form::textarea('content', null, array('class' => 'form-control')) }}<br>
            <br>

            {{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

            {{ Form::close() }}
    </div>
    </div>
</div>

@endsection