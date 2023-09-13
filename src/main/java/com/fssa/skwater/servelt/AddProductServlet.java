package com.fssa.skwater.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.skwater.exception.InvalidProductException;
import com.fssa.skwater.model.Product;
import com.fssa.skwater.servicelayer.ProductService;

/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String productName = request.getParameter("name");
		String productDescription = request.getParameter("description");
		Double productPrice = Double.parseDouble(request.getParameter("price"));
		String productImg = request.getParameter("image");
		Long productCapacity = Long.parseLong(request.getParameter("capacity"));
        System.out.println(productCapacity);
		// below the code for crate the instance
		Product product = new Product();

		product.setProductName(productName);
		product.setProductDescription(productDescription);
		product.setProductPrice(productPrice);
		product.setProductImageURL(productImg);
		product.setProductCapacity(productCapacity);

		// Below the code for call the service

		ProductService productService = new ProductService();

		try {
			ProductService.addProduct(product);
			response.sendRedirect(request.getContextPath() + "/GetAllProductServlet");
		}

		catch (InvalidProductException  e) {
			e.printStackTrace();

		}
	}

}