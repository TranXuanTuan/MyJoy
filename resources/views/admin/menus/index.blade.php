@extends('layouts.admin.content')

@section('title', '| List Menu')

@section('content')

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<h2 class="text-left">List Menu</h2>
			<div class="col-2">
            	<p>
            		<a href="{{ route('menus.create') }}" class="btn btn-dark">Add Menu</a>
            	</p>
        	</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Menu Name</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<tbody>
					@foreach($menus as $menu)
					<tr>
						<td>{{$menu->id}}</td>
						<td>{{$menu->menu_name}}</td>
						<td>
							<a href="{{ route('menus.edit', $menu->id) }}" class="btn btn-sm btn-primary">Edit</a>
						</td>
						<td>
							{!! Form::open(['method' => 'DELETE', 'route' => ['menus.destroy', $menu->id] ]) !!}
                    		{!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                    		{!! Form::close() !!}
						</td>
					</tr>
					@endforeach
				</tbody>

			</table>
		</div>
	</div>
</section>

@endsection