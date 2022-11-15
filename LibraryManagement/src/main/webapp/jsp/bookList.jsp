<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="css/bookList.css" type= "text/css" rel ="stylesheet">
<script src="js/bookList.js"></script>
<meta charset="ISO-8859-1">
<title>Library Management</title>
</head>
<body>

<header>
	<h2> Library Management System </h2>
</header>

<div>
	<h3 align="right" style="margin-right: 10px" >
		Welcome
		<%=request.getParameter("userName")%>
	</h3>
</div>
<div>
	<button type="button" onclick="redirectToAddPage();" class="btn btn-primary mr-2" style="float: left;">
		Add Book Detail
	</button>
	<button type="button" onclick="redirectToHomePage();" class="btn btn-danger" style="float: right;">Logout</button>
	<br><br>
</div>
<div class="form-group">
	<fieldset class="the-fieldset">
	    <legend class="the-legend">Book Listing</legend>

	    <table class="table table-bordered border #88cc00" id = "bookTable">

		<tr>
		<th>Book Code</th>
		<th>Book Name</th>
		<th>Author</th>
		<th>Date Added</th>
		<th>Action</th>
		</tr>

		</table>
	</fieldset>
</div>

<script type="text/javascript">
	var request = new XMLHttpRequest();
	var rowNumber = 1;
	request.open('GET', 'http://localhost:8081//Books', true);
	request.onload = function () {

	 var data = JSON.parse(this.response);

	  if (request.status >= 200 && request.status < 400) {
	  	
	    data.forEach(book => {
		    var table = document.getElementById("bookTable");
			var row = table.insertRow(rowNumber);
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);

			var dob = new Date(book.date);

			cell1.innerHTML = book.code;
			cell2.innerHTML = book.name;
			cell3.innerHTML = book.author;
			cell4.innerHTML = dob.toLocaleDateString('en-GB', {
																    day: '2-digit',
																    month : 'short',
																    year : 'numeric'
																}).split(' ').join('-');
			cell5.innerHTML = '<button type="button" onclick="onEdit(this)"; class="btn btn-secondary">Edit</button>';
			rowNumber++;
	    });
	  } else {
	    console.log('error occurred. Please try again');
	  }
	}

	request.send();
            

</script>

</body>
</html>