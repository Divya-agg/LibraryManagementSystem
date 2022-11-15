<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="css/register.css" type= "text/css" rel ="stylesheet">
<script src="js/register.js"></script>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<div class="sidenav">
	<div class="sidenav-main-text">
		<h2>New To Library Management Utility</h2>
		<p>Create new account from here</p>
	</div>
</div>
<div class="main">
   <div class="col-md-4 col-sm-12">
      <div class="Register-form">
         <form action = "requestRegister" method = "post">
            <div class="form-group">
               <label>User Name</label>
               <input type="text" class="form-control" placeholder="User Name" name = "userName">
            </div>
            <div class="form-group">
               <label>Password</label>
               <input type="password" class="form-control" placeholder="Password" name = "passwd">
            </div>
            <div class="form-group">
               <label>Confirm Password</label>
               <input type="password" class="form-control" placeholder="Confirm Password" name = "confirmPasswd">
            </div>
            <button type="submit" class="btn btn-black">Register</button>
         </form>
      </div>
   </div>
</div>
</body>
</html>

