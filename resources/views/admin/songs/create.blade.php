@extends('layouts.admin.content')

@section('content')
    {{ Form::open(array('route' => 'songs.store')) }}
        {{ csrf_field() }}
        <div class="form-group">
        @csrf
        <div class="row">
            <div class="col-6">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title"></h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>Song Name</label>
                            <input type="text" name="song_name" class="form-control" value="{{ old('song_name') }}">
                        </div>

                        <div class="form-group">
                            <label for="customFile">Picture</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="picture">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Artist ID</label>
                            <select class="form-control" name="artist_id">
                                <option value="" selected>----------Select Artist----------</option>
                            @foreach($artist as $at)

                                <option value="{{$at->id}}">{{$at -> artist_name}}</option>
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
                            <label>Category ID</label>
                            <select class="form-control" name="category_id">
                                <option value="" selected>----------Select Category----------</option>
                            @foreach($songcategories as $songcategory)

                                <option value="{{$songcategory->id}}">{{$songcategory -> category_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Artist Name</label>
                            <input type="text" name="artist_name" class="form-control" value="{{ old('artist_name') }}">
                        </div>

                        <div class="form-group">
                            
                            <label for="customFile">Link</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="link">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group text-center">
            <a href="{{ route('songs.index') }}" class="btn btn-secondary">Song List</a>
            {{ Form::submit('Create Song', array('class' => 'btn btn-success')) }}
            {{ Form::close() }}
        </div>
    </form>
@endsection