<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Create Form</title>
<link rel="stylesheet" href="./assets/css/createproduct.css">

</head>
<body>


	<div class="Productform">
		<h1>Product Create Form</h1>
		<form action="AddProductServlet" method="post">

			<label for="name">Product Name:</label> <input type="text" id="name"
				name="name" autofocus required> <br>
			<br> <label for="description">Product Description:</label> <input
				type="text" id="description" name="description" required> <br>
			<br> <label for="image">Product Image URL:</label> <input
				type="text" id="image" name="image" required> <br>
			<br> <label for="price">Product Price:</label> <input
				type="number" id="price" name="price" required> <br>
			<br> <label for="capacity">Product Capacity:</label> <input
				type="number" id="capacity" name="capacity"> <br> <br>
			<br>
			<button type="submit">Create</button>
		</form>
	</div>
</body>
</html>





