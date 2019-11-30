@extends('layouts.admin.content')

@section('content')
<div class="col-lg-12">
    <h1><i class="fa fa-file"></i> PRODUCTS </h1>
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
                    <th>Product Name</th>
                    <th>Picture</th>
                    <th>Created at</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($productcategories as $productcategory)
                <tr>
                    <td>{{ $productcategory->id}}</td>
                    <td>{{ $productcategory->product_name}}</td>
                    <td>
                        @if(!empty($productcategory->picture))
                            <img src="/upload/product_category/{{$productcategory->picture}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                        <span>{{ $productcategory->created_at->format('F d, Y') }}</span>
                                
                    </td>  
                    <td>
                    <a href="{{ route('admin_productcategories.edit', $productcategory->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_productcategories.destroy', $productcategory->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
    </div>

    <a href="{{ route('admin_productcategories.create') }}" class="btn btn-success">Add Product</a>

</div>

@endsection