package com.fssa.skwater.servelt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//		int id=Integer.parseInt(request.getParameter("id"));
//		ProductService productservice=new ProductService();
//		
//		Product product=productservice.getProductById(id);
//		request.setAttribute("product", product);
//		
//		request.getServletContext().getRequestDispatcher("/productDetail.jsp").forward(request, response);		
//	
		
		
		
		PrintWriter out = response.getWriter();
		out.println("ProductServelt");
		System.out.println("ProductServelt Called");
		
		
		ServletRequest requst = null;
		String ProductName = requst.getParameter("ProductName");
		String ProductImageUrl = requst.getParameter("ProductImageUrl");
		String ProductDescription = requst.getParameter("ProductPrice");
		String ProductPrice = requst.getParameter("ProductPrice");
		String ProductCapacity = requst.getParameter("ProductCapacity");
		
		System.out.println(ProductName+"-"+ProductImageUrl+"-"+ProductDescription+"-"+ProductDescription+"-"+ProductPrice+"-"+ProductCapacity);
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
	        String url, userName, passWord;

	  	  
	        String url1 = System.getenv("DATABASE_HOST");
	        String userName1 = System.getenv("DATABASE_USERNAME");
	        String passWord1 = System.getenv("DATABASE_PASSWORD");
            Connection con =DriverManager.getConnection(url1, userName1, passWord1);
            System.out.println(con);
            
            String sql ="insert into Products (ProductName,ProductImageUrl,ProductDescription,ProductPrice,ProductCapacity) values(?,?,?,?,?)";
		    System.out.println(sql);
		    
		    PreparedStatement pst = con.prepareStatement(sql);
		    pst.setString(1, ProductName);
		    pst.setString(2, ProductImageUrl);
		    pst.setString(3, ProductDescription);
		    pst.setString(4, ProductPrice);
		    pst.setString(5, ProductCapacity);
		    
		    int rows =pst.executeUpdate();
		    System.out.println("No of rows inserted"+rows);
		    
	}catch(Exception e) {
		out.println("Errormessage"+e.getMessage());
		
		request.setAttribute("errormessage", "Successfullyadded products");
	}
		
	}

	
		
		
	}

	
	


