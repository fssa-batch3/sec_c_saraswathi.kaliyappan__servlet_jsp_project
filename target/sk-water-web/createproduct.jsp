<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Create Form</title>
<link rel="stylesheet"
	href="/flowerybouquet-web/assets/css/productform.css">
</head>
<body>

	 <h1>Product Create Form</h1>
    <div class="Productform">
        <form action="AddProductServlet" method="post">
            <label for="name">Product Name:</label> 
            <input type="text" id="name" name="name" required><br><br> 
            <label for="description">Product Description:</label> <!-- Fixed typo in "label" -->
            <input type="text" id="description" name="description" required><br><br> <!-- Added "name" attribute -->
            <label for="image">Product Image URL:</label> <!-- Fixed label text -->
            <input type="text" id="image" name="image" required><br><br> 
            <label for="price">Product Price:</label> <!-- Fixed label text -->
            <input type="number" id="price" name="price" required><br><br> 
            <label for="capacity">Product Capacity:</label> <!-- Fixed label text and "name" attribute -->
            <input type="text" id="capacity" name="capacity"> <br><br> <!-- Added "name" attribute -->
            <button type="submit">Create</button> <!-- Changed the button type to "submit" -->
        </form>
    </div>
</body>
</html>





