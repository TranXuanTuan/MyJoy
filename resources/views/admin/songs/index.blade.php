@extends('layouts.admin.content')

@section('title', '| Users')

@section('content')

<div class="col-lg-12">
    <h1><i class="fas fa-music"></i> SONGS 
       
    </h1>
    <div class="table-responsive">
    @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
        <table class="table table-bordered table-striped">

            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Picture</th>
                    <th>Singer</th>
                    <th>Composer</th>
                    <th colspan="3">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($songs as $song)
                <tr>
                    <td>{{ $song->id}}</td>
                    <td>{{ $song->song_name }}</td>
                    <td>
                    	@if(!empty($song->picture))
                            <img src="/upload/songs/{{$song->picture}}" class="img-fluid" width="50%">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>{{ $song->artist->artist_name}}</td>
                    <td>{{ $song->composer}}</td>
                    <td>
                    <a href="{{ route('songs.show', $song->id) }}" class="btn btn-primary" >Show</a>                   
                    </td>
                    <td>
                    <a href="{{ route('songs.edit', $song->id) }}" class="btn btn-info pull-left" >Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['songs.destroy', $song->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
        {{ $songs->links() }}
    </div>

    <a href="{{ route('songs.create') }}" class="btn btn-success">Add Song</a>

</div>

@endsection
