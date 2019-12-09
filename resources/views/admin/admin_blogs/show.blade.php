@extends('layouts.admin.content')

@section('content')
        <h1>Show Blog</h1>
        @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
        <hr>
            <div class="form-group">
            <div class="row">
            <div class="col-6">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title"></h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" name="title" class="form-control" value="{{ $blog->title }}" disabled>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea rows="4" name="description" class="form-control ckeditor" disabled>{{ $blog->description }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="customFile">Image</label>
                            @if(!empty($blog->image))
                                <img src="/upload/blogs/{{$blog->image}}" class="img-fluid">
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>

                        <div class="form-group">
                            <label>User Create</label>
                            <input type="text" name="user_id" value="{{ $blog->user->name }}" disabled class="form-control">                            </select>
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="col-6">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title"></h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>Content</label>
                            <textarea rows="4" name="content" class="form-control ckeditor" disabled>{{ $blog->content }}</textarea>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
            <a href="{{ route('admin_blogs.index') }}" class="btn btn-secondary">Blog List</a>
        </div>
        </div>
        </div>
    </div>
    </div>
@endsection