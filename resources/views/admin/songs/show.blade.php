@extends('layouts.admin.content')

@section('content')
    {{ Form::model($song, array('route' => array('songs.update', $song->id), 'method' => 'PUT')) }}
        {{ csrf_field() }}
        @include('admin.blocks.errors')
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
                            <input type="text" name="song_name" class="form-control" value="{{ $song->song_name }}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="customFile">Picture</label><br>
                            @if(!empty($song->picture))
                                <img src="/upload/songs/{{$song->picture}}" class="img-fluid">
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="customFile">URL</label>
                            @if(!empty($song->url))
                                <input type="text" name="url" class="form-control" value="{{ $song->url }} " disabled>
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="customFile">MV</label>
                            @if(!empty($song->mv))
                                <input type="text" name="mv" class="form-control" value="{{ $song->mv }} " disabled>
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>

                        <div class="form-group">
                            <label>Lyric</label>
                            <textarea rows="4" name="song_lyric" class="form-control" disabled>{{ $song->song_lyric }}</textarea>
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
                            <input type="text" name="composer" class="form-control" value="{{ $song->composer }} " disabled>
                        </div>

                        <div class="form-group">
                            <label>Artist</label>
                            <select class="form-control chosen" name="artist_id" disabled>
                            @foreach($artist as $at)
                                <option value="{{$at->id}}" {{ $at->id == $song->artist_id ? 'selected' : ''}}>{{$at->artist_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Album</label>
                            <select class="form-control chosen" name="album_id" disabled>
                            @foreach($album as $ab)
                                <option value="{{$ab->id}}" {{ $ab->id == $song->album_id ? 'selected' : ''}}>{{$ab->album_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Category ID</label>
                            <select class="form-control chosen" name="category_id" disabled>
                                <option value="" selected>----------Select Category----------</option>
                            @foreach($songcategories as $songcategory)
                                <option value="{{$songcategory->id}}" {{ $songcategory->id == $song->category_id ? 'selected' : ''}}>{{$songcategory->category_name}}</option>
                            @endforeach  
                            </select>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group text-center">
            <a href="{{ route('songs.index') }}" class="btn btn-secondary">Song List</a>
        </div>
    </form>
@endsection