@extends('layouts.admin.content')

@section('content')
<form action="{{route('admin_artists.index')}}" method="post" >
        @csrf
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create Artist </h1>
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
                            <label>Artist Name</label>
                            <input type="text" name="artist_name" class="form-control" value="{{ old('artist_name') }}">
                        </div>

                        <div class="form-group">
                            <label>Intro</label>
                            <input type="text" name="intro" class="form-control" value="{{ old('intro') }}">
                        </div>

                        <div class="form-group">
                            <label for="customFile">Avatar</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="avatar">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Category ID</label>
                            <select class="form-control chosen" name="category_id">
                                <option value="">--------Select--------</option>
                            @foreach($categories as $category)
                                <option value="{{$category->id}}">{{$category->category_name}}</option>
                            @endforeach  
                            </select>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="form-group text-center">
                <a href="{{ route('admin_artists.index') }}" class="btn btn-secondary">Artist List</a>
                <button type="reset" class="btn btn-primary">Reset</button>
                <button type="submit" class="btn btn-success">Add</button>            
            </div>
        </div>
        </div>
        </div>
    </div>
    </form>
@endsection