@extends('layouts.admin.content')

@section('title', '| Create Blogs ')

@section('content')
<form action="{{route('admin_events.index')}}" method="post" >
        @csrf
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        <h1>Create Event </h1>
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
                            <label>Title</label>
                            <input type="text" name="title" class="form-control" value="{{ old('title') }}">
                        </div>

                        <div class="form-group">
                            <label>Place</label>
                            <input type="text" name="event_place" class="form-control" value="{{ old('event_place') }}">
                        </div>

                        <div class="form-group">
                            <label>Date</label>
                            <input type="Date" name="event_date" class="form-control" value="{{ old('event_date') }}"></input>
                        </div>

                        <div class="form-group">
                            <label>Content</label>
                            <textarea rows="4" name="content" class="form-control" value="{{ old('content') }}"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="customFile">Image</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="image">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Creator</label>
                            <select class="form-control" name="user_id">
                                <option value="" selected>----------Select ID----------</option>
                            @foreach($users as $user)

                                <option value="{{$user->id}}">{{$user->name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Author</label>
                            <input type="text" name="author" class="form-control" value="{{ old('author') }}">    
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
                <a href="{{ route('admin_events.index') }}" class="btn btn-secondary">Event List</a>
                <button type="reset" class="btn btn-primary">Reset</button>
                <button type="submit" class="btn btn-success">Add</button>            
            </div>
        </div>
        </div>
        </div>
    </div>
    </form>
@endsection