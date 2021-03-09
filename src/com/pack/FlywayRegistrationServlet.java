package com.pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Registration;


@WebServlet("/RegistrationServlet")
public class FlywayRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	try {
		
		Class.forName("org.h2.Driver");
		Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa" , "");
		
		System.out.println("Connected to DB !! - User Registration.");
		
		PrintWriter out = response.getWriter();
		PreparedStatement pst= 
				conn.prepareStatement("Insert into USER_DTLS(name, age, email, address, city, zip, loginId, password) values(?,?,?,?,?,?,?,?)");
		
		String uname = request.getParameter("uname");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String zip = request.getParameter("zip");
		String loginId = request.getParameter("loginId");
		String password = request.getParameter("pass");
		
		
		pst.setString(1, uname);
		pst.setString(2, age);
		pst.setString(3, email);
		pst.setString(4, address);
		pst.setString(5, city);
		pst.setString(6, zip);
		pst.setString(7, loginId);
		pst.setString(8, password);
		
		pst.executeUpdate();
		
		System.out.println("User details added into DB !! - User Registration.");
		
		HttpSession session = request.getSession();
		session.setAttribute("uname", uname);
		
		response.sendRedirect("RegisterSuccess.jsp");
		out.println("User Registration Successful.");
		
		} catch (ClassNotFoundException e) {
		      e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
