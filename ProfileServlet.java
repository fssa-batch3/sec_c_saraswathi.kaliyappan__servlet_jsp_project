package com.fssa.skwater.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.skwater.logger.Logger;
import com.fssa.skwater.model.User;
import com.fssa.skwater.servicelayer.UserService;
import com.google.protobuf.ServiceException;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response, String password)
			throws ServletException, IOException {

		HttpSession httpSession = request.getSession();
		String emailId = (String) httpSession.getAttribute("loggedInEmail");
		Logger.info(emailId);

		try {
			User userDetails = new UserService().userLogin(emailId, password);
			request.setAttribute("userDetails", userDetails);
			Logger.info(userDetails.toString());
			RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
			rd.forward(request, response);
		} catch (IOException | ServiceException e) {
			Logger.info(e.getMessage());
		}

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}