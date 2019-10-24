@extends('layouts.admin.content')

@section('title', '| Users')

@section('content')

<div class="col-lg-12">
    <h1><i class="far fa-newspaper"></i> NEWS 
       
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
                    <th>Title</th>
                    <th>Description</th>
                    <th>Content</th>

                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($news as $new)
                <tr>
                    <td>{{ $new->id}}</td>
                    <td>{{ $new->title }}</td>
                    <td>{{ $new->description }}</td>
                    <td>{{ $new->content}}</td>
                    
                    <td>
                    <a href="{{ route('admin_news.edit', $new->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_news.destroy', $new->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
        {{ $news->links() }}
    </div>

    <a href="{{ route('admin_news.create') }}" class="btn btn-success">Add News</a>

</div>

@endsection