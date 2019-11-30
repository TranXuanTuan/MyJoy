@extends('layouts.admin.content')

@section('content')
<form action="{{ route('admin_albumcategories.update',$albumCategory->id)}}" method="post">
<input type="hidden" name="_method" value="PUT">
@csrf
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <h1>Edit Album Category</h1>
        @if(session('flash_message'))
        <div class="alert alert-success">
            {{session('flash_message')}}
        </div>
    @endif
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
                            <label>Category Name</label>
                            <input type="text" name="category_name" class="form-control" value="{{ $albumCategory->category_name }}">
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
            <a href="{{ route('admin_albumcategories.index') }}" class="btn btn-secondary">Category List</a>
            <button type="reset" class="btn btn-primary">Reset</button>
            <button type="submit" class="btn btn-success">Update</button>
        </div>
        </div>
        </div>
    </div>
    </div>
    </form>
@endsection