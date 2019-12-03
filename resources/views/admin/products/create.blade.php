@extends('layouts.admin.content')

@section('content')
<form action="{{route('admin_products.index')}}" method="post" >
        @csrf
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create Product </h1>
        <hr>
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
                            <input type="text" name="name_product" class="form-control" value="{{ old('name_product') }}">
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <input type="text" name="description" class="form-control" value="{{ old('description') }}">
                        </div>

                        <div class="form-group">
                            <label>Unit</label>
                            <input type="number" name="unit" class="form-control" value="{{ old('unit') }} >
                        </div>

                        <div class="form-group">
                            <label>Price</label>
                            <input type="number" name="price" class="form-control" value="{{ old('price') }}>
                        </div>

                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control chosen" name="category_id">
                                <option value="" selected>----------Select----------</option>
                            @foreach($categories as $category)
                                <option value="{{$category->id}}">{{$category->product_name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="customFile">Picture</label>
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
                <a href="{{ route('admin_products.index') }}" class="btn btn-secondary">Artist List</a>
                <button type="reset" class="btn btn-primary">Reset</button>
                <button type="submit" class="btn btn-success">Add</button>            
            </div>
        </div>
        </div>
        </div>
    </div>
    </form>
@endsection