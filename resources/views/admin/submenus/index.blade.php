@extends('layouts.admin.master')

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
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					@foreach($submenus as $submenu)
					<tr>
						<td>{{$submenu->id}}</td>
						<td>{{$submenu->sub_menu_name}}</td>
						<td>
							<a href="#" class="btn btn-sm btn-primary">Edit</a>
							<a href="#" class="btn btn-sm btn-danger">Delete</a>
						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
</section>

@endsection