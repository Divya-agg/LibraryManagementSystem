<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="css/edit.css" type= "text/css" rel ="stylesheet">
<script src="js/edit.js"></script>
<meta charset="ISO-8859-1">
<title>Edit Details</title>
</head>
<body>

<header>
	<h2> Edit Detail</h2>
</header>

<div class="container">
    <div class="col-lg-8 push-lg-4 personal-info center_div">
         <form action = "/bookList" method = "GET" role="form">
         	<div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label">Book Code:</label>
                <div class="col-lg-9">
                    <input class="form-control" type="text" id="code" disabled/>
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
                <label class="col-lg-3 col-form-label form-control-label">Date:</label>
                <div class="col-lg-9">
                    <input class="form-control" type="date" id="dob"/>
                </div>
            </div>
           

            <div class="form-group row">
                <label class="col-lg-3 col-form-label form-control-label"></label>
                <div class="col-lg-9">
                    <input type="submit" onclick="sendEditRequest();" class="btn btn-primary" value="Save Changes" />
                    <input type="button" onclick="redirectToBookListPage();" class="btn btn-danger" value="Cancel" />
                </div>
            </div>
        </form>
    </div>

</div>

<script type="text/javascript">
	var request = new XMLHttpRequest();
	request.open('GET', 'http://localhost:8081//Find//'+<%=request.getParameter("code")%>, true);
	request.onload = function () {

	 var data = JSON.parse(this.response);

	  if (request.status >= 200 && request.status < 400) {
	  	
	  	document.getElementById("code").value = data.code;
	  	document.getElementById("name").value = data.name;
	  	document.getElementById("author").value = data.author;
	  	document.getElementById("dob").value = formatDate(new Date(data.dob));
	  } else {
	    console.log('error occurred. Please try again');
	  }
	}

	request.send();

</script>


</body>
</html>