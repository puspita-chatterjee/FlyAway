package com.pack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * This Servlet class handles
 * Flyway Login related actions
 * and stores/validates in H2 DB.
 */

@WebServlet("/LoginServlet")
public class FlywayLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String name = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		if(name.equals("puspita") && pass.equals("munu")) {
			//out.println("Welcome to the Application");
			
			HttpSession session = request.getSession();
			session.setAttribute("myname", name);
			response.sendRedirect("LoginSuccess.jsp");
			
		}else {
			out.println("Invadil input");
		}
		
	}

}
