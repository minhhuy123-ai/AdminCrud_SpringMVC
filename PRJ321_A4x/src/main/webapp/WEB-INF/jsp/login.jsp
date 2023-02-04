<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.bg {
	background: url('${pageContext.request.contextPath}/resources/media/bg.jpg') no-repeat;
	background-size: cover;
	height: 100vh;
}

.form-container {
	border: 0px solid #fff;
	padding: 30px 40px;
	margin-top: 20vh;
	-webkit-box-shadow: -1px 4px 26px 11px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: -1px 4px 26px 11px rgba(0, 0, 0, 0.75);
	box-shadow: -1px 4px 26px 11px rgba(0, 0, 0, 0.75);
	color: #fff;
}
</style>
</head>
<body>
	
	
	<div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <!--form start-->
                <form class="form-container" action="login.html" method="post">
                  <h1>Sign in</h1>
                  <% if(request.getAttribute("error") != null) {%>
                	  <div class="alert alert-danger">
                	  ${error}.
                	  </div>
                  <% }%>
                    <div class="form-group">
                      <label for="username">Email address</label>
                      <input type="email" class="form-control" name="usermail" value="${usermail}" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" class="form-control" name="password" value="${password}" placeholder="Password">
                    </div>
                    <div class="checkbox">
                      <label>
                        <input type="checkbox" name="remember"> Remember me
                      </label>
                    </div>
                    <button type="submit" class="btn btn-success">Submit</button>
                  </form>
                <!--form end-->
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>
    
    
</body>
</html>