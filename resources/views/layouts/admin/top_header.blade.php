<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <!-- Bootstrap 3.3.7 -->
  	<link rel="stylesheet" href="{{asset('bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('bower_components/font-awesome/css/font-awesome.min.css')}}" />
    <!-- Ionicons -->
  	<link rel="stylesheet" href="{{asset('bower_components/Ionicons/css/ionicons.min.css')}}">
  	<!-- jvectormap -->
  <link rel="stylesheet" href="{{asset('bower_components/jvectormap/jquery-jvectormap.css')}}">
    <link rel="stylesheet" href="{{asset('dist/css/AdminLTE.min.css')}}" />
    <link rel="stylesheet" href="{{asset('dist/css/skins/_all-skins.min.css')}}" />
    <link rel="stylesheet" href="{{asset('css/app.css')}}" />
    @yield('stylesheets')
</head>
<body class="hold-transition skin-blue sidebar-mini">