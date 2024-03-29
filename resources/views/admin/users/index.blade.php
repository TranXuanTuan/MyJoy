@extends('layouts.admin.content')

@section('content')

<div class="col-lg-12">
    <h1><i class="fa fa-users"></i> User Administration 
        <a href="{{ route('roles.index') }}" class="btn btn-default pull-right">Roles</a>
        <a href="{{ route('permissions.index') }}" class="btn btn-default pull-right">Permissions</a>
        
    </h1>
    <div class="col-9">
        <form action="{{ route('users.index') }}" method="get">
            <table class="table table-bordered">
                <tr>
                    <td>User Name</td>
                    <td>
                        <input type="text" name="search_user_name" value="{{ $search_user_name }}"class="form-control">
                    </td>
                    <td>
                        <input type="submit" value="Search" class="btn btn-dark">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="table-responsive">
    @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
        <table class="table table-bordered table-striped">

            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Date/Time Added</th>
                    <th>Roles</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($users as $user)
                <tr>

                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->created_at->format('F d, Y h:ia') }}</td>
                    <td>{{  $user->roles()->pluck('name')->implode(' ') }}</td>{{-- Retrieve array of roles associated to a user and convert to string --}}
                    <td>
                    <a href="{{ route('users.edit', $user->id) }}" class="btn btn-info pull-left">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['users.destroy', $user->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $users->links() }}
    </div>

    <a href="{{ route('users.create') }}" class="btn btn-success">Add User</a>

</div>

@endsection