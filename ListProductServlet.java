package com.fssa.skwater.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.skwater.model.Product;
import com.fssa.skwater.servicelayer.ProductService;
import com.google.protobuf.ServiceException;

/**
 * Servlet implementation class ListProductServlet
 * 
 * @param <Product>
 */
@WebServlet("/ListProductServlet")
public class ListProductServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductService productservice = new ProductService();
		try {
			List<Product> productList = (List<Product>) productservice.getAllProductDetails();
			request.setAttribute("PRODUCT_LIST", productList);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/listProduct.jsp");
		dis.forward(request, response);

	}
}
