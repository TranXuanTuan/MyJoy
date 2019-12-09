@extends('layouts.admin.content')

@section('content')

<div class="col-lg-12">
    <h1><i class="fas fa-microphone-alt"></i>Song Category
       
    </h1>
    <div class="table-responsive">
    @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
        <table class="table table-bordered table-striped">

            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Topic</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($categories as $category)
                <tr>
                    <td>{{ $category->id}}</td>
                    <td>{{ $category->category_name}}</td>
                    <td>{{ $category->topic->topic_name}}</td>
                    <td>
                    <a href="{{ route('songcategories.edit', $category->id) }}" class="btn btn-info pull-left">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['songcategories.destroy', $category->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <a href="{{ route('songcategories.create') }}" class="btn btn-success">Add Category</a>

</div>

@endsection