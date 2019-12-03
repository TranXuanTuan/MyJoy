@extends('layouts.admin.content')

@section('content')

<div class="col-lg-12">
    <h1><i class="far fa-newspaper"></i> EVENTS 
       
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
                    <th>Creator</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Image</th>
                    <th colspan="3">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($events as $event)
                <tr>
                    <td>{{ $event->id}}</td>
                    <td>{{ $event->title }}</td>
                    <td>{{ $event->author}}</td>
                    <td>
                        @if(!empty($event->image))
                            <img src="/upload/events/{{$event->image}}" class="img-fluid" width="50%">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                    <a href="{{ route('admin_events.show', $event->id) }}" class="btn btn-primary" >Show</a>                   
                    </td>
                    <td>
                    <a href="{{ route('admin_events.edit', $event->id) }}" class="btn btn-info pull-left" >Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_events.destroy', $event->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
        {{ $events->links() }}
    </div>

    <a href="{{ route('admin_events.create') }}" class="btn btn-success">Add Events</a>

</div>

@endsection