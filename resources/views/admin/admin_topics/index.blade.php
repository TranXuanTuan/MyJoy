@extends('layouts.admin.content')

@section('content')
<div class="col-lg-12">
    <h1><i class="fa fa-file"></i> TOPICS </h1>
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
                    <th>Topic Name</th>
                    <th>Picture</th>
                    <th>Created at</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($topics as $topic)
                <tr>
                    <td>{{ $topic->id}}</td>
                    <td>{{ $topic->topic_name}}</td>
                    <td>
                        @if(!empty($topic->picture))
                            <img src="/upload/topics/{{$topic->picture}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>{{ $topic->created_at }}</td>
                    <td>
                    <a href="{{ route('admin_topics.edit', $topic->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_topics.destroy', $topic->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
    </div>

    <a href="{{ route('admin_topics.create') }}" class="btn btn-success">Add Topic</a>

</div>

@endsection