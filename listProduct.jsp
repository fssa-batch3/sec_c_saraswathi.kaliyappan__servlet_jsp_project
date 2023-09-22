<%@page import="com.fssa.skwater.servicelayer.ProductService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.skwater.model.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Product Page</title>
<link rel="stylesheet" href="./assets/css/product.css">
</head>
<body>
	<header>
		<i class="fa-solid fa-magnifying-glass"></i> <input type="name"
			placeholder="search" id="name">
		<div class="navbar">
			<a href="../pages/home.html">Home</a> <a href="./listproduct.jsp">Products</a>
			<a href="../login.jsp">Login</a>
			<div class="user">
				<a href="./assets/pages/profile.jsp"><i
					class="fa-regular fa-circle-user"></i></a>
			</div>
	</header>
	<div class="content_box">
		<%
		//	List<Product> productList = (List<Product>) request.getAttribute("GetAllProduct");
		ProductService productService = new ProductService();
		List<Product> productList = productService.getAllProductDetails();
		System.out.println(productList);

		if (productList != null && !productList.isEmpty()) {
		%>

		<%
		for (Product product : productList) {
		%>
		<div class="can">
			<img id="can" src=<%=product.getProductImageURL()%> alt="undefined">
			<h2><%=product.getProductName()%></h2>
			<h4 class=><%=product.getProductPrice()%></h4>
			<h5><%=product.getProductCapacity()%></h5>
			<button
				style="background-color: #007bff; color: #fff; padding: 10px 20px; font-size: 16px; border: none; border-radius: 5px; cursor: pointer;">Buy
				now</button>

		</div>
		<%
		}
		%>
	</div>
	<%
	} else {
	%>
	<h1>Product is not available</h1>
	<%
	}
	%>

</body>
</html>