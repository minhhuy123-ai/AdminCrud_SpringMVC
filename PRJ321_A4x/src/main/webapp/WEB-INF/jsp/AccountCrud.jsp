<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage User Page</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
<%@ include file="../css/crud.css"%>
</style>
</head>
<body>

	<div class="container">
		<% if(request.getAttribute("error") != null) {%>
           <div class="alert alert-danger">
               ${error}.
           </div>
        <% }%>
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-xs-6">
							<h2>Manage <b>User</b></h2>
						</div>
						<div class="col-xs-6">
							<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Account</span></a>
							<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
						</div>
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>
								<span class="custom-checkbox">
									<input type="checkbox" id="selectAll">
									<label for="selectAll"></label>
								</span>
							</th>
							<th>Name</th>
							<th>Email</th>
							<th>Address</th>
							<th>Phone</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${listA}" var="o">
						<tr>
							<td>
								<span class="custom-checkbox">
									<input type="checkbox" id="${o.usr}" name="options[]" value="${o.usr}">
									<label for="${o.usr}"></label>
								</span>
							</td>
							<td>${o.name}</td>
							<td>${o.usr}</td>
							<td>${o.address}</td>
							<td>${o.phone}</td>
							<td>
								<a href="load-account.html?mail=${o.usr}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
								<a href="del-by-mail.html?mail=${o.usr}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
							</td>
						</tr>			
					
					</c:forEach>
					</tbody>
				</table>
				<div class="clearfix">
					<!-- <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div> -->
					<div class="hint-text"><a href="admin.html">Go back to admin page</a></div>
					<ul class="pagination">
						<li class="page-item disabled"><a href="#">Previous</a></li>
						<li class="page-item"><a href="#" class="page-link">1</a></li>
						<li class="page-item"><a href="#" class="page-link">2</a></li>
						<li class="page-item active"><a href="#" class="page-link">3</a></li>
						<li class="page-item"><a href="#" class="page-link">4</a></li>
						<li class="page-item"><a href="#" class="page-link">5</a></li>
						<li class="page-item"><a href="#" class="page-link">Next</a></li>
					</ul>
				</div>
			</div>
		</div>        
    </div>
	<!-- Add Modal HTML -->
	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="add-account.html" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Add User Account</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							<label>Name</label>
							<input type="text" class="form-control" name="user_name" required>
						</div>
						<div class="form-group">
							<label>Email</label>
							<input type="email" class="form-control" name="user_mail" required>
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="text" class="form-control" name="password" required>
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea class="form-control" name="address"></textarea>
						</div>
						<div class="form-group">
							<label>Phone</label>
							<input type="text" class="form-control" name="phone">
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Edit Modal HTML -->
	<div id="editEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="edit" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Edit User Account</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Email</label>
							<input type="email" class="form-control" name="user_mail_2" value="${detail.usr}" readonly required>
						</div>					
						<div class="form-group">
							<label>Name</label>
							<input type="text" class="form-control" name="user_name_2" value="${detail.name}" required>
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="text" class="form-control" name="password_2" value="${detail.pwd}" required>
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea class="form-control" name="address_2">${detail.address}</textarea>
						</div>
						<div class="form-group">
							<label>Phone</label>
							<input type="text" class="form-control" name="phone_2" value="${detail.phone}">
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-info" value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="del-sel-accs" method="post">
					<div class="modal-header">						
						<h4 class="modal-title">Delete User</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<p>Are you sure you want to delete these Accounts?</p>
						<p class="text-warning"><small>This action cannot be undone.</small></p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-danger" value="Delete">
					</div>
				</form>
			</div>
		</div>
	</div>




</body>
</html>