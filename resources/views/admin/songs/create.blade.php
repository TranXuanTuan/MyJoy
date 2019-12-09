@extends('layouts.admin.content')

@section('content')
    {{ Form::open(array('route' => 'songs.store')) }}
    @csrf
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
                            <label>Name</label>
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
                            <label for="customFile">URL</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="url">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="customFile">MV</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="mv">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Lyric</label>
                            <textarea rows="4" name="song_lyric" class="form-control" value="{{ old('song_lyric') }}"></textarea>
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
                            <label>Composer</label>
                            <input type="text" name="composer" class="form-control" value="{{ old('composer') }}">
                        </div>
                        
                        <div class="form-group">
                            <label>Artist</label>
                            <select class="form-control" name="artist_id">
                                <option value="" selected>----------Select Artist----------</option>
                            @foreach($artist as $at)

                                <option value="{{$at->id}}">{{$at -> artist_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control" name="category_id">
                                <option value="" selected>----------Select Category----------</option>
                            @foreach($categories as $category)

                                <option value="{{$category->id}}">{{$category -> category_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Album</label>
                            <select class="form-control" name="album_id">
                                <option value="" selected>----------Select Album----------</option>
                            @foreach($album as $ab)
                                <option value="{{$ab->id}}">{{$ab->album_name}}</option>
                            @endforeach  
                            </select>
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