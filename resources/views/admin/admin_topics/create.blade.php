@extends('layouts.admin.content')

@section('content')
<form action="{{route('admin_topics.index')}}" method="post" >
        @csrf
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create Topic </h1>
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
                            <label>Topic Name</label>
                            <input type="text" name="topic_name" class="form-control" value="{{ old('topic_name') }}">
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
                <a href="{{ route('admin_topics.index') }}" class="btn btn-secondary">Topic List</a>
                <button type="reset" class="btn btn-primary">Reset</button>
                <button type="submit" class="btn btn-success">Add</button>            
            </div>
        </div>
        </div>
        </div>
    </div>
    </form>
@endsection