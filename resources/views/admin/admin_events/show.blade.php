@extends('layouts.admin.content')
@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
        
        <h1>Show Event </h1>
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
                            <label>Title</label>
                            <input type="text" name="title" class="form-control" value="{{$event->title}}" disabled>
                        </div>

                        <div class="form-group">
                            <label>Place</label>
                            <input type="text" name="event_place" class="form-control" value="{{ $event->event_place }}" disabled>
                        </div>

                        <div class="form-group">
                            <label>Date</label>
                            <input type="Date" name="event_date" class="form-control" value="{{ $event->event_date }}" disabled></input>
                        </div>

                        <div class="form-group">
                            <label>Content</label>
                            <textarea type="text" name="content" class="form-control ckeditor" disabled>{{ $event->content }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="customFile">Image</label>
                            @if(!empty($event->image))
                                <img src="/upload/events/{{$event->image}}" class="img-fluid" width="50%">
                            @else
                                <img src="/img/images/no-image.png" alt="no image">
                            @endif
                        </div>

                        <div class="form-group">
                            <label>Creator</label>
                            <select class="form-control chosen" name="user_id" disabled>
                            @foreach($users as $user)
                                <option value="{{$user->id}}">{{$user->name}}</option>
                            @endforeach  
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Author</label>
                            <input type="text" name="author" class="form-control" value="{{  $event->author }}" disabled>    
                        </div>
                        
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="form-group text-center">
                <a href="{{ route('admin_events.index') }}" class="btn btn-secondary">Event List</a>
            </div>
        </div>
        </div>
        </div>
    </div>
    </form>
@endsection