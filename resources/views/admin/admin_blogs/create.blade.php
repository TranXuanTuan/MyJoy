@extends('layouts.admin.content')

@section('title', '| Create Blogs ')

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create Blog </h1>
        <hr>

        {{ Form::open(array('route' => 'admin_blogs.store')) }}

        <div class="form-group">
            <div class="row">
            <div class="col-12">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title"></h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" name="title" class="form-control" value="{{ old('title') }}">
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <input type="text" name="description" class="form-control" value="{{ old('description') }}">
                        </div>

                        <div class="form-group">
                            <label>Content</label>
                            <input type="text" name="content" class="form-control" value="{{ old('content') }}">
                        </div>

                        <div class="form-group">
                            <label for="customFile">Image</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="image">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>User ID</label>
                            <select class="form-control" name="user_id">
                                <option value="" selected>----------Select ID----------</option>
                            @foreach($users as $user)

                                <option value="{{$user->id}}">{{$user->name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Author</label>
                            <input type="text" name="author" class="form-control" value="{{ old('author') }}">    
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
                <a href="{{ route('admin_blogs.index') }}" class="btn btn-secondary">Blog List</a>
                {{ Form::submit('Create Blog', array('class' => 'btn btn-success')) }}
                {{ Form::close() }}
            </div>
        </div>
        </div>
        </div>
    </div>

@endsection