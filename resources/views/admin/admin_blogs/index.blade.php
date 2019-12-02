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
                    <th>Content</th>
                    <th>Image</th>


                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($blogs as $blog)
                <tr>
                    <td>{{ $blog->id}}</td>
                    <td>{{ $blog->user->name}}</td>
                    <td>{{ $blog->title }}</td>
                    <td>{{ $blog->description }}</td>
                    <td>{!!html_entity_decode($blog->content)!!}</td>
                    <td>
                        @if(!empty($blog->image))
                            <img src="/upload/blogs/{{$blog->image}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                    <a href="{{ route('admin_blogs.edit', $blog->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
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

    <a href="{{ route('admin_blogs.create') }}" class="btn btn-success">Add Blogs</a>

</div>

@endsection