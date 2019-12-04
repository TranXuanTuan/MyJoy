@extends('layouts.admin.content')

@section('title', '| Edit Artist')

@section('content')
<form action="{{ route('admin_artists.update',$artist->id)}}" method="post">
<input type="hidden" name="_method" value="PUT">
@csrf
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <h1>Edit Artist</h1>
        @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
        @endif
        @include('admin.blocks.errors')
        <hr>
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
                            <input type="text" name="artist_name" class="form-control" value="{{ $artist->artist_name }}">
                        </div>

                        <div class="form-group">
                            <label>Intro</label>
                            <input type="text" name="intro" class="form-control" value="{{ $artist->intro }}">
                        </div>

                        <div class="form-group">
                            <label for="customFile">Avatar</label>
                            @if(!empty($artist->avatar) && Storage::disk('local')->exists($artist->avatar))
                                <img src="{{ Storage::disk('local')->url($artist->avatar) }}" alt="{{ $artist->avatar }}" class="img-fluid">
                            @endif
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="avatar">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control chosen" name="category_id">
                            @foreach($categories as $category)
                                <option value="{{$category->id}}" {{ $category->id == $artist->category_id ? 'selected' : ''}}>{{$category->category_name}}</option>
                            @endforeach  
                            </select>
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
            <a href="{{ route('admin_artists.index') }}" class="btn btn-secondary">Artist List</a>
            <button type="reset" class="btn btn-primary">Reset</button>
            <button type="submit" class="btn btn-success">Update</button>
        </div>
        </div>
        </div>
    </div>
    </div>
    </form>
@endsection