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
                    <th>Song Name</th>
                    <th>Picture</th>
                    <th>Artist Name</th>
                    <th>Link</th>

                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($songs as $song)
                <tr>
                    <td>{{ $song->id}}</td>
                    <td>{{ $song->song_name }}</td>
                    <td>
                    	@if(!empty($song->picture))
                            <img src="/upload/artists/{{$song->picture}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>{{ $song->artist_name}}</td>
                    <td>{{ $song->link}}</td>
                    <td>
                    <a href="{{ route('songs.edit', $song->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
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

    <a href="{{ route('songs.create') }}" class="btn btn-success">Add Songs</a>

</div>

@endsection
