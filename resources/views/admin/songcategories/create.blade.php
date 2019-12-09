@extends('layouts.admin.content')

@section('content')
<form action="{{route('songcategories.index')}}" method="post" >
        @csrf
        @include('admin.blocks.errors')
        <h1>Create Category</h1>
        <div class="form-group">
            <div class="row">
                <div class="col-6">
                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title"></h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="category_name" class="form-control" value="{{ old('category_name') }}">
                            </div>

                            <div class="form-group">
                                <label>Topic</label>
                                <select class="form-control chosen" name="topic_id">
                                    <option value="" selected>----------Select----------</option>
                                @foreach($topics as $topic)
                                    <option value="{{$topic->id}}">{{$topic->topic_name}}</option>
                                @endforeach  
                                </select>
                            </div>

                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
            </div>
            <div class="form-group text-center">
                <a href="{{ route('songcategories.index') }}" class="btn btn-secondary">Category List</a>
                <button type="reset" class="btn btn-primary">Reset</button>
                <button type="submit" class="btn btn-success">Add</button>            
            </div>
    </form>
@endsection