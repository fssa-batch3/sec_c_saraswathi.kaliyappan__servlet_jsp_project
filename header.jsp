<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<!--  <header>
		<i class="fa-solid fa-magnifying-glass">
		</i> <input type="name" placeholder="search" id="name" width="13px" height="13px">
		<div class="navbar">
			<a href="../pages/home.html">Home</a> <a href="./listproduct.jsp">Products</a>
			<a href="../login.jsp">Login</a>
			<div class="user">
				<a href="./assets/pages/profile.jsp"><i
					class="fa-regular fa-circle-user"></i></a>
			</div>
	</header>-->
<body>
	<header>
		<h3>Sk Water</h3>
		<div class="search">


			<input type="name" placeholder="Search" id="name" width="13px"
				height="13px">
		</div>
		<div class="cart">
			<a href="<%=request.getContextPath()%>/pages/Order/orderhistory.html">
				<i class="fa-solid fa-lock"></i>
			</a> <a href="<%=request.getContextPath()%>/pages/profile.jsp"> <i
				class="fa-solid fa-user"></i>
			</a>

		</div>
	</header>
	<div class="navbar">
		<a href="home.jsp">Home</a>
		<a href="listProduct.jsp">Products</a>
		<a href="<%=request.getContextPath()%>/pages/login.jsp" id="login">Login</a>
	</div>



	<%
	Boolean login = (Boolean) session.getAttribute("loggedInSuccess");
	if (login != null && login) {
	%>
	<%
	} else {
	%>
	

	<%
	}
	%>

	<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
	%>





	</div>


</body>