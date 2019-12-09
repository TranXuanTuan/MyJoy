@extends('layouts.admin.content')

@section('content')

<div class="col-lg-12">
    <h1><i class="far fa-newspaper"></i> BLOGS 
       
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
                    <th>Author</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th colspan="3">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($blogs as $blog)
                <tr>
                    <td>{{ $blog->id}}</td>
                    <td>{{ $blog->user->name}}</td>
                    <td>{{ $blog->title }}</td>
                    <td>{{ $blog->description}}</td>
                    <td>
                        @if(!empty($blog->image))
                            <img src="/upload/blogs/{{$blog->image}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                        <a href="{{ route('admin_blogs.show', $blog->id) }}" class="btn btn-primary">Show</a>                   
                    <td>
                        <a href="{{ route('admin_blogs.edit', $blog->id) }}" class="btn btn-info pull-left" >Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_blogs.destroy', $blog->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
        {{ $blogs->links() }}
    </div>

    <a href="{{ route('admin_blogs.create') }}" class="btn btn-success">Add Blog</a>

</div>

@endsection