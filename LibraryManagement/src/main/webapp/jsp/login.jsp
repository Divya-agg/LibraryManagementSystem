<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="css/login.css" type= "text/css" rel ="stylesheet">
<script src="js/login.js"></script>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div class="sidenav">
	<div class="login-main-text">
		<h2>Library Management System</h2>
		<p>Login or register from here to access</p>
	</div>
</div>
<div class="main">
   <div class="col-md-4 col-sm-12">
      <div class="login-form">
         <form action = "requestLogin" method = "post">
            <div class="form-group">
               <label>User Name</label>
               <input type="text" class="form-control" placeholder="User Name" name = "userName">
            </div>
            <div class="form-group">
               <label>Password</label>
               <input type="password" class="form-control" placeholder="Password" name = "passwd">
            </div>
            <button type="submit" class="btn btn-black">Login</button>
            <button type="button" onclick="redirectToRegisterPage();" class="btn btn-secondary">Register</button>
            <div class="form-group" id="formFooter">
		      <a href="#">Forgot Password?</a>
		    </div>
         </form>
      </div>
   </div>
</div>
</body>
</html>