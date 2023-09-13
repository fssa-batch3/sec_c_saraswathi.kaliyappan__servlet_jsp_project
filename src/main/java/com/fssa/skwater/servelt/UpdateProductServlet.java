package com.fssa.skwater.servlet;

import java.io.IOException;
import java.net.MalformedURLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.skwater.exception.DAOException;
import com.fssa.skwater.exception.InvalidProductException;
import com.fssa.skwater.logger.Logger;
import com.fssa.skwater.model.Product;
import com.fssa.skwater.servicelayer.ProductService;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ProductService productService = new ProductService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int productInt = Integer.parseInt(request.getParameter("productid"));
		String productName = request.getParameter("name");
		String productDescriptionString = request.getParameter("description");
		Double productPrice = Double.parseDouble(request.getParameter("price"));
		String productImg = request.getParameter("image");
		Long productCapacity = Long.parseLong(request.getParameter("capacity"));

		Product product = new Product();

		product.setProductId(productInt);
		product.setProductName(productName);
		product.setProductDescription(productDescriptionString);
		product.setProductPrice(productPrice);
		product.setProductImageURL(productImg);
		product.setProductCapacity(productCapacity);

		try {
			ProductService.updateProduct(product, productInt);

			response.sendRedirect(request.getContextPath() + "/GetAllProductServlet");
		} catch (DAOException | MalformedURLException | InvalidProductException e) {
			e.printStackTrace();
		}

	}

}