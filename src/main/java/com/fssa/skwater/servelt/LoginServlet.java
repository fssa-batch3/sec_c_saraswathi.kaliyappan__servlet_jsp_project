package com.fssa.skwater.servelt;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		if(email == null || "".equals(email)) {
			out.println("Invalid Email");
			response.sendRedirect("login.html");
		}
		
		else if(password == null || "".equals(password) || password.length() < 6) {
			response.sendRedirect("login.html");	
		}
		else {
			out.println("Email and password is valid");
//			response.sendRedirect("home.html");
			RequestDispatcher dispatcher = request.getRequestDispatcher("home.html");
			dispatcher.forward(request, response);
		}
		
	}

}