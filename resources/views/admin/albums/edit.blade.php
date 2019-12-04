@extends('layouts.admin.content')

@section('title', '| Edit Album')

@section('content')
<form action="{{ route('admin_albums.update',$album->id)}}" method="post">
<input type="hidden" name="_method" value="PUT">
@csrf
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <h1>Edit Album</h1>
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
                            <input type="text" name="album_name" class="form-control" value="{{ $album->album_name }}">
                        </div>

                        <div class="form-group">
                            <label for="customFile">Thumb</label>
                            @if(!empty($album->thumb) && Storage::disk('local')->exists($album->thumb))
                                <img src="{{ Storage::disk('local')->url($album->thumb) }}" alt="{{ $album->thumb }}" class="img-fluid">
                            @endif
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="thumb">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control" name="category_id">
                            @foreach($categories as $category)
                                <option value="{{$category->id}}" {{ $category->id == $album->category_id ? 'selected' : ''}}>{{$category->category_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Artist</label>
                            <select class="form-control chosen" name="artist_id">
                            @foreach($artists as $artist)
                                <option value="{{$artist->id}}" {{ $artist->id == $album->artist_id ? 'selected' : ''}}>{{$artist->artist_name}}</option>
                            @endforeach  
                            </select>
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
            <a href="{{ route('admin_albums.index') }}" class="btn btn-secondary">album List</a>
            <button type="reset" class="btn btn-primary">Reset</button>
            <button type="submit" class="btn btn-success">Update</button>
        </div>
        </div>
        </div>
    </div>
    </div>
    </form>
@endsection