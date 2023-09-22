<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./assets/css/updateform.css">
</head>
<body>


	<h1>update Product Form</h1>

	<form action="UpdateProductServlet" method="post">
		<h1>update Product Form</h1>
		<br> <label for="id">Product Id:</label> <input type="number"
			id="id" name="productid" required> <br>
		<br> <label for="name">ProductName:</label> <input type="text"
			id="name" name="name" required><br> <br>
		<br>
		<lable for="description">ProductDescription:</lable>
		<input type="text" name="description" id="description"> <br>
		<br> <label for="image">ProductImage URL:</label> <input
			type="text" id="image" name="image" required><br> <br>
		<br> <label for="price">Product price:</label> <input
			type="number" id="price" name="price" required> <br>
		<br> <label for="capacity">Capacity:</label> <input type="number"
			id="capacity" name="capacity" /> <br>
		<br> <input type="submit" value="Update">
	</form>

</body>
</html>