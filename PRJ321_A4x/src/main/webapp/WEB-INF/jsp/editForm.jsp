<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
<%@ include file="../css/crud.css"%>
</style>
</head>
<body>
	<div class="container">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-xs-6">
							<h2>Edit <b>User</b></h2>
						</div>
						<div class="col-xs-6">				
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal-dialog">
		<div class="modal-content">
			<form action="edit.html" method="post">
				<div class="modal-header">
					<h4 class="modal-title">Edit User Account</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Email</label> <input type="email" class="form-control"
							name="user_mail_2" value="${detail.usr}" readonly required>
					</div>
					<div class="form-group">
						<label>Name</label> <input type="text" class="form-control"
							name="user_name_2" value="${detail.name}" required>
					</div>
					<div class="form-group">
						<label>Password</label> <input type="text" class="form-control"
							name="password_2" value="${detail.pwd}" required>
					</div>
					<div class="form-group">
						<label>Address</label>
						<textarea class="form-control" name="address_2">${detail.address}</textarea>
					</div>
					<div class="form-group">
						<label>Phone</label> <input type="text" class="form-control"
							name="phone_2" value="${detail.phone}">
					</div>
				</div>
				<div class="modal-footer">
					<a href="LoadAllAccount" class="btn btn-default" role="button">Cancel</a>
					<input type="submit" class="btn btn-success" value="Save">
				</div>
			</form>
		</div>
	</div>






</body>
</html>