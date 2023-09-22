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