@extends('layouts.admin.content')

@section('title', '| Edit Blog')

@section('content')
<form action="{{ route('admin_blogs.update',$blog->id)}}" method="post">
<input type="hidden" name="_method" value="PUT">
@csrf
        <h1>Edit Blog</h1>
        @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
        @endif
        @include('admin.blocks.errors')
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
                            <input type="text" name="title" class="form-control" value="{{ $blog->title }}">
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control">{{ $blog->description }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="customFile">Image</label>
                            @if(!empty($blog->image) && Storage::disk('local')->exists($blog->image))
                                <img src="{{ Storage::disk('local')->url($blog->image) }}" alt="{{ $blog->image }}" class="img-fluid">
                            @endif
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="image">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Author</label>
                            <select class="form-control chosen" name="user_id">
                            @foreach($users as $user)
                                <option value="{{$user->id}}" {{ $user->id == $blog->user_id ? 'selected' : ''}}>{{$user->name}}</option>
                            @endforeach  
                            </select>
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
                            <textarea name="content" class="form-control ckeditor">{{ $blog->content }}</textarea>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
            <a href="{{ route('admin_blogs.index') }}" class="btn btn-secondary">Blog List</a>
            <button type="reset" class="btn btn-primary">Reset</button>
            <button type="submit" class="btn btn-success">Update</button>
        </div>
        </div>
        </div>
    </div>
    </div>
    </form>
@endsection