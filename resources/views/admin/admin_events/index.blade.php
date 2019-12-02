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
                    <th>Place</th>
                    <th>Date</th>
                    <th>Content</th>
                    <th>Author</th>
                    <th>Image</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($events as $event)
                <tr>
                    <td>{{ $event->id}}</td>
                    <td>{{ $event->user->name}}</td>
                    <td>{{ $event->title }}</td>
                    <td>{{ $event->event_place }}</td>
                    <td>{{ $event->event_date}}</td>
                    <td>{!!html_entity_decode($event->content)!!}</td>
                    <td>{{ $event->author}}</td>
                    <td>
                        @if(!empty($event->image))
                            <img src="/upload/events/{{$event->image}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                    <a href="{{ route('admin_events.edit', $event->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
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