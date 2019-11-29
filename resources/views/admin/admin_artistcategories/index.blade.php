@extends('layouts.admin.content')

@section('content')
<div class="col-lg-12">
    <h1><i class="fa fa-file"></i> ARTIST CATEGORY</h1>
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
                    <th>Category Name</th>
                    <th>Created at</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($artistcategories as $artistcategory)
                <tr>
                    <td>{{ $artistcategory->id}}</td>
                    <td>{{ $artistcategory->category_name}}</td>
                    <td>
                        <span>{{ $artistcategory->created_at->format('F d, Y') }}</span>
                                
                    </td>  
                    <td>
                    <a href="{{ route('admin_artistcategories.edit', $artistcategory->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
                    </td>
                    
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_artistcategories.destroy', $artistcategory->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
    </div>

    <a href="{{ route('admin_artistcategories.create') }}" class="btn btn-success">Add Artist Category</a>

</div>

@endsection