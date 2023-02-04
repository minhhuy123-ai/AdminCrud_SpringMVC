<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin page</title>
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-inverse visible-xs">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Welcome ${s}</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Dashboard</a></li>
					<li><a href="../LoadAllAccount">Manage User</a></li>
					<li><a href="#">Manage Product</a></li>
					<li><a href="../list">Back to Home page</a></li>
					<li><a href="../logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav hidden-xs">
				<h2>Welcome ${s}</h2>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#section1">Dashboard</a></li>
					<li><a href="loadAllAccount.html">Manage User</a></li>
					<li><a href="#">Manage Product</a></li>
					<li><a href="../list">Back to Home page</a></li>
					<li><a href="logout.html">Logout</a></li>
				</ul>
				<br>
			</div>
			<br>

			<div class="col-sm-9">
				<div class="well">
					<h4>Dashboard</h4>
					<p>Some text..</p>
				</div>
				<div class="row">
					<div class="col-sm-3">
						<div class="well">
							<h4>Users</h4>
							<p>1 Million</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="well">
							<h4>Pages</h4>
							<p>100 Million</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="well">
							<h4>Sessions</h4>
							<p>10 Million</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="well">
							<h4>Bounce</h4>
							<p>30%</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="well">
							<p>Text</p>
							<p>Text</p>
							<p>Text</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="well">
							<p>Text</p>
							<p>Text</p>
							<p>Text</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="well">
							<p>Text</p>
							<p>Text</p>
							<p>Text</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8">
						<div class="well">
							<p>Text</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="well">
							<p>Text</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>