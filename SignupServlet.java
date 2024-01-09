package com.fssa.skwater.servelt;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.skwater.daolayer.UserDao;
import com.fssa.skwater.exception.DAOException;
import com.fssa.skwater.exception.InvalidUserException;
import com.fssa.skwater.exception.ServiceException;
import com.fssa.skwater.model.User;
import com.fssa.skwater.servicelayer.UserService;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String conformpassword = request.getParameter("conformpassword");
		UserService userservice = new UserService();

		UserDao userdao = new UserDao();
		try {
			if (userdao.emailExists(email)) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('Email already exists. Please use a different email.');</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/signup.jsp");
				rd.include(request, response);
			} else {
				// Email doesn't exist, proceed with registration
				User user = new User();
				user.setFirstName(name);
				user.setEmail(email);
				user.setPassword(password);

				try {
					boolean added = userservice.userSignUp(user);

					if (added) {
						System.out.println("Added");
						response.sendRedirect("./pages/login.jsp");
					} else {
						System.out.println("Not added");
					}

				} catch (InvalidUserException e) {
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (DAOException | IOException | ServletException e) {

			e.printStackTrace();
		}
	}
}
