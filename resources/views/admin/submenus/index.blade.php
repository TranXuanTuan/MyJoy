@extends('layouts.admin.content')

@section('title', '| List SubMenu')

@section('content')

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<h2 class="text-left">List SubMenu</h2>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>

						<th>SubMenu Name</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<tbody>
					@foreach($submenus as $submenu)
					<tr>
						<td>{{$submenu->id}}</td>
						<td>{{$submenu->sub_menu_name}}</td>
						<td>
							<a href="{{ route('submenus.edit', $submenu->id) }}" class="btn btn-sm btn-primary">Edit</a>
						</td>
						<td>
							{!! Form::open(['method' => 'DELETE', 'route' => ['submenus.destroy', $submenu->id] ]) !!}
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