package com.fssa.skwater.servelt;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.skwater.model.Account;

/**
 * Servlet implementation class GetAllAccounts
 */
@WebServlet("/GetAllAccountServlet")
public class GetAllAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Account> accounts = new ArrayList<Account> ();
		
		accounts.add(new Account("100","Bharath",1000, LocalDate.now()));
		accounts.add(new Account("200","Ram",2000, LocalDate.now()));
		accounts.add(new Account("300","Dhivya",3000, LocalDate.now()));
		request.setAttribute("ACCOUNTS_LIST", accounts);
		RequestDispatcher dispatcher = request.getRequestDispatcher("accounts-list.jsp");
		dispatcher.forward(request, response);
	}

}