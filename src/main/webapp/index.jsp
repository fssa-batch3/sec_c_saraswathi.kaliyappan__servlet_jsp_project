<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to SKWATER</h1>

<h3>Add Product</h3>

<%
  String infoMessage = (String)request.getAttribute("infoMessage");
  String erroMessage = (String)request.getAttribute("errorMessage");
%>
<%=infoMessage %>
<%=erroMessage %>

if(infoMessage != null){
out.prinln(infoMessage);
}
if(erroMessage != null){
out.prinln(infoMessage);
}


<form action="ProductSercvelt" mathod="GET">
 <input type="text" name="productName" placeholder="Enter productName" autofocus requried /><br><br>
 <input type="text" name="ProductImageURL" placeholder="Add productimageurl" autofocus/><br><br>
 <input type="text" name="ProductDescription" placeholder="Enter productdescription" autofocus  /><br><br>
 <input type="text" name="ProductPrice" placeholder="Enter productprice" autofocus/><br><br>
 <input type="text" name="ProductCapacity" placeholder="Enter productcapacity" autofocus /><br><br>
 <button type="submit">Submit</button>
 

</form>
</body>
</html>