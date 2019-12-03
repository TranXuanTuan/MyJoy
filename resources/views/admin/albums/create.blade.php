@extends('layouts.admin.content')

@section('content')
<form action="{{route('admin_albums.index')}}" method="post" >
        @csrf
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create Album</h1>
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
                            <label>Album Name</label>
                            <input type="text" name="album_name" class="form-control" value="{{ old('album_name') }}">
                        </div>

                        <div class="form-group">
                            <label for="customFile">Thumb</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="thumb">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control chosen" name="category_id">
                                <option value="" selected>----------Select----------</option>
                            @foreach($categories as $category)
                                <option value="{{$category->id}}">{{$category->category_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Artist</label>
                            <select class="form-control chosen" name="artist_id">
                                <option value="" selected>----------Select----------</option>
                            @foreach($artists as $artist)
                                <option value="{{$artist->id}}">{{$artist->artist_name}}</option>
                            @endforeach  
                            </select>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
                <a href="{{ route('admin_albums.index') }}" class="btn btn-secondary">Album List</a>
                <button type="reset" class="btn btn-primary">Reset</button>
                <button type="submit" class="btn btn-success">Add</button>            
            </div>
        </div>
        </div>
        </div>
    </div>
    </form>
@endsection