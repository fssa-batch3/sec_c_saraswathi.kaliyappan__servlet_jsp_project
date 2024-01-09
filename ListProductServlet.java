package com.fssa.skwater.servelt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListProductServlet
 * 
 * @param <Product>
 */
@WebServlet("/ListProductServlet")
public class ListProductServlet<Product> extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			List<Product> products = new ArrayList<Product>();

			// Step 1: Fetch the customer details from customers table
			String sql = "select id,productName,productDescription,productPrice,productImage,productCapacity from products";

			Class.forName("com.mysql.cj.jdbc.Driver");

			// Step 2.2: GEt the db connection
			String url = System.getenv("DATABASE_HOST");
			String userName = System.getenv("DATABASE_USERNAME");
			String passWord = System.getenv("DATABASE_PASSWORD");
			Connection con = DriverManager.getConnection(url, userName, passWord);
			System.out.println(con);

			PreparedStatement pst = con.prepareStatement(sql);

			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				int productId = rs.getInt("productId");
				double productPrice = rs.getDouble("productPrice");
				String productImage = rs.getString("productImage");
				long productCapacity = rs.getLong("productCapacity");

				Products products1 = new Products(productId, productPrice, productImage, productCapacity);
				products.add((Product) products);
			}

			// Step 3: Set the values in request
			request.setAttribute("PRODUCT_LIST", products);

			// Step 4: Forward the request to listcustomers.jsp
			RequestDispatcher dispatcher = request.getRequestDispatcher("listproduct.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
