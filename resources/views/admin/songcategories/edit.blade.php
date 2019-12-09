@extends('layouts.admin.content')

@section('content')
<form action="{{ route('songcategories.update',$category->id)}}" method="post">
<input type="hidden" name="_method" value="PUT">
@csrf
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <h1>Edit Category</h1>
        @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
        <hr>
        @include('admin.blocks.errors')
            <div class="form-group">
            <div class="row">
            <div class="col-12">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title"></h3>
                    </div>
                    <div class="card-body">
                    <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="category_name" class="form-control" value="{{ $category->category_name }}">
                        </div>

                        <div class="form-group">
                            <label>Topic</label>
                            <select class="form-control chosen" name="topic_id">
                            @foreach($topics as $topic)
                                <option value="{{$topic->id}}" {{ $topic->id == $category->topic_id ? 'selected' : ''}}>{{$topic->topic_name}}</option>
                            @endforeach  
                            </select>
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
            <a href="{{ route('songcategories.index') }}" class="btn btn-secondary">Category List</a>
            <button type="reset" class="btn btn-primary">Reset</button>
            <button type="submit" class="btn btn-success">Update</button>
        </div>
        </div>
        </div>
    </div>
    </div>
    </form>
@endsection