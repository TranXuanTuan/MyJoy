@extends('layouts.admin.content')

@section('title', '| Edit product')

@section('content')
<form action="{{ route('admin_products.update',$product->id)}}" method="post">
<input type="hidden" name="_method" value="PUT">
@csrf
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <h1>Edit product</h1>
        @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
        <hr>
        @include('admin.blocks.errors')
            <div class="form-group">
            <div class="row">
            <div class="col-12">
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title"></h3>
                    </div>
                    <div class="card-body">
                    <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name_product" class="form-control" value="{{ $product->name_product }}">
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <input type="text" name="description" class="form-control" value="{{ $product->description }}">
                        </div>

                        <div class="form-group">
                            <label>Unit</label>
                            <input type="number" name="unit" class="form-control" value="{{ $product->unit }}>
                        </div>

                        <div class="form-group">
                            <label>Price</label>
                            <input type="number" name="price" class="form-control" value="{{ $product->price }}>
                        </div>

                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control chosen" name="category_id">
                            @foreach($categories as $category)
                                <option value="{{$category->id}}" {{ $category->id == $product->category_id ? 'selected' : ''}}>{{$category->product_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="customFile">Picture</label>
                            @if(!empty($product->picture) && Storage::disk('local')->exists($product->picture))
                                <img src="{{ Storage::disk('local')->url($product->picture) }}" alt="{{ $product->picture }}" class="img-fluid">
                            @endif
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="picture">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
            <a href="{{ route('admin_products.index') }}" class="btn btn-secondary">Product List</a>
            <button type="reset" class="btn btn-primary">Reset</button>
            <button type="submit" class="btn btn-success">Update</button>
        </div>
        </div>
        </div>
    </div>
    </div>
    </form>
@endsection