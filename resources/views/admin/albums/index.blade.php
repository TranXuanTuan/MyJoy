@extends('layouts.admin.content')

@section('content')

<div class="col-lg-12">
    <h1><i class="fas fa-microphone-alt"></i>ALBUMS
       
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
                    <th>Ablum Name</th>
                    <th>Category</th>
                    <th>Artist </th>
                    <th>Thumb</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($albums as $album)
                <tr>
                    <td>{{ $album->id}}</td>
                    <td>{{ $album->album_name }}</td>
                    <td>{{ $album->category->category_name}}</td>
                    <td>{{ $album->artist->artist_name }}</td>
                    <td>
                        @if(!empty($album->thumb))
                            <img src="/upload/albums/{{$album->thumb}}" width="50%">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                    <a href="{{ route('admin_albums.edit', $album->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_albums.destroy', $album->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $albums->links() }}
    </div>

    <a href="{{ route('admin_albums.create') }}" class="btn btn-success">Add album</a>

</div>

@endsection