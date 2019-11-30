@extends('layouts.admin.content')

@section('content')

<div class="col-lg-12">
    <h1><i class="fas fa-microphone-alt"></i>ARTISTS
       
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
                    <th>Category_Artist</th>
                    <th>Artist Name</th>
                    <th>Intro</th>
                    <th>Avatar</th>

                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($artists as $artist)
                <tr>
                    <td>{{ $artist->id}}</td>
                    <td>{{ $artist->category->category_name }}</td>
                    <td>{{ $artist->artist_name }}</td>
                    <td>{{ $artist->intro }}</td>
                    <td>
                        @if(!empty($artist->avatar))
                            <img src="/upload/artists/{{$artist->avatar}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                    <a href="{{ route('admin_artists.edit', $artist->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_artists.destroy', $artist->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
    </div>

    <a href="{{ route('admin_artists.create') }}" class="btn btn-success">Add Artist</a>

</div>

@endsection