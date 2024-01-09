package com.fssa.skwater.servelt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.skwater.exception.ServiceException;
import com.fssa.skwater.model.User;
import com.fssa.skwater.servicelayer.UserService;
import com.fssa.skwater.utils.Logger;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/profileServlet")
public class profileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession httpSession = request.getSession();
		String emailId = (String) httpSession.getAttribute("loggedInEmail");
		Logger.info(emailId);

		try {
			User userDetails = new UserService().userLogin(emailId);
			request.setAttribute("userDetails", userDetails);

			RequestDispatcher rd = request.getRequestDispatcher("/pages/profile.jsp");
			rd.forward(request, response);
		} catch (IOException e) {
			Logger.info(e.getMessage());
		} catch (com.google.protobuf.ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}