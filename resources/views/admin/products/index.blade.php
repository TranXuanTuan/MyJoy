@extends('layouts.admin.content')

@section('content')

<div class="col-lg-12">
    <h1><i class="fas fa-microphone-alt"></i>PRODUCTS
       
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
                    <th>Description</th>
                    <th>Unit</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>

            <tbody>
                @foreach ($products as $product)
                <tr>
                    <td>{{ $product->id}}</td>
                    <td>{{ $product->name_product}}</td>
                    <td>{{ $product->description }}</td>
                    <td>{{ $product->unit }}</td>
                    <td>{{ $product->price }}</td>
                    <td>
                        @if(!empty($product->picture))
                            <img src="/upload/products/{{$product->picture}}" class="img-fluid">
                        @else
                            <img src="/img/images/no-image.png" alt="no image">
                        @endif
                    </td>
                    <td>
                    <a href="{{ route('admin_products.edit', $product->id) }}" class="btn btn-info pull-left" style="margin-right: 3px;">Edit</a>                   
                    </td>
                    <td>
                        {!! Form::open(['method' => 'DELETE', 'route' => ['admin_products.destroy', $product->id] ]) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
                @endforeach
            </tbody>
            {{ $products->links() }}
        </table>
    </div>

    <a href="{{ route('admin_products.create') }}" class="btn btn-success">Add product</a>

</div>

@endsection