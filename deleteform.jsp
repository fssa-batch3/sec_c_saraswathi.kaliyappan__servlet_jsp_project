<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product delete form</title>
<link rel="stylesheet" href="./assets/css/deleteform.css">
</head>
<body>


	<div class="Productform">
		<h1>Product Delete Form</h1>
		<form action="DeleteProductServlet">

			<label for="id">Product Id:</label> <input type="number" id="id"
				name="productid" required> <br>
			<br>
			<button>Delete</button>
		</form>
	</div>

</body>
</html>