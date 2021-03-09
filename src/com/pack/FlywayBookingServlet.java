package com.pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/BookingServlet")
public class FlywayBookingServlet  extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
			Class.forName("org.h2.Driver");
			Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa" , "");
			
			System.out.println("Connected to DB !! - Booking");
			
			PrintWriter out = response.getWriter();
			PreparedStatement pst= 
					conn.prepareStatement("Insert into BOOKING_DTLS(confirmationnumber, startDate, endDate, airline, departingcity, destinationcity, reservationowner) values(?,?,?,?,?,?,?)");
			
			String confirmationNumber = "FLY-"+UUID.randomUUID().toString().substring(0, 12).toUpperCase();
			String startDate = request.getParameter("startDate");
			String endDate = request.getParameter("endDate");
			String airline = request.getParameter("airline");
			String departingCity = request.getParameter("departing");
			String destinationCity = request.getParameter("destination");
			String reservationowner = request.getParameter("reservationowner");

			//System.out.println("confirmationNumber---"+confirmationNumber);
			//System.out.println("startDate-"+startDate+"--endDate--"+endDate+"--airline--"+airline+"---departingCity-"+departingCity+"--destinationCity--"+destinationCity+"--reservationowner--"+reservationowner);
			
			pst.setString(1, confirmationNumber);
			pst.setString(2, startDate);
			pst.setString(3, endDate);
			pst.setString(4, airline);
			pst.setString(5, departingCity);
			pst.setString(6, destinationCity);
			pst.setString(7, reservationowner);
			pst.executeUpdate();
			
			System.out.println("User details added into DB !! - Booking");
			
			HttpSession session = request.getSession();
			session.setAttribute("reservationowner", reservationowner);
			session.setAttribute("confirmationNumber", confirmationNumber);
			
			response.sendRedirect("BookingConfirmation.jsp");
			out.println("Flight Booking Successful.");
			
			
		} catch (ClassNotFoundException e) {
		      e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}