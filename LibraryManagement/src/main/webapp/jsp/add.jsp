<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="css/add.css" type= "text/css" rel ="stylesheet">
<script src="js/add.js"></script>
<meta charset="ISO-8859-1">
<title>Add Details</title>
</head>
<body>

<header>
	<h2> Add Detail</h2>
</header>

<div class="container">
    <div class="col-lg-8 push-lg-4 personal-info center_div">
         <form action = "/bookList" method = "GET" role="form">
         	<div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label">Book Code:</label>
                <div class="col-lg-9">
                    <input class="form-control" type="text" id="code"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label">Book Name:</label>
                <div class="col-lg-9">
                    <input class="form-control" type="text" id="name" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label">Author:</label>
                <div class="col-lg-9">
                    <input class="form-control" type="text" id="author"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label">Date Added:</label>
                <div class="col-lg-9">
                    <input class="form-control" type="date" id="dob"/>
                </div>
            </div>
           

            <div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label"></label>
                <div class="col-lg-9">
                    <input type="button" onclick="sendAddRequest();" class="btn btn-primary" value="Save Changes" />
                    <input type="button" onclick="redirectToBookListPage();" class="btn btn-danger" value="Cancel" />
                </div>
            </div>
        </form>
    </div>

</div>

</body>
</html>