@extends('layouts.admin.master')

@section('title', '| List Menu')

@section('content')

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<h2 class="text-left">List Menu</h2>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Menu Name</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					@foreach($menus as $menu)
					<tr>
						<td>{{$menu->id}}</td>
						<td>{{$menu->MenuName}}</td>
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