<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Customers</title>
</head>
<body>
    <h3>List Customers</h3>

    <%
        // Retrieve the product list from the request
        List<products1> productList = (List<products1>) request.getAttribute("PRODUCT_LIST");
    %>

    <table border="1">
        <thead>
            <tr>
                <th>Sno</th>
                <th>productName</th>
                <th>productDescription</th>
                <th>productPrice</th>
                <th>productImage</th>
                <th>productCapacity</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (Product product : productList) {
            %>
            <tr>
                <td><%= product.getId() %></td>
                <td><%= product.getProductName() %> </td>
                <td><%= product.getProductDescription() %></td>
                <td><%= product.getProductPrice() %></td>
                <td><%= product.getProductImage() %></td>
                <td><%= product.getProductCapacity() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
