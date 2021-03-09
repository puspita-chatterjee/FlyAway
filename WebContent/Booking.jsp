<!-- This JSP is to input Booking details -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
p {text-align: center;}
button {text-align: centre;}
body {
  background-image: url('https://png.pngtree.com/thumb_back/fh260/back_our/20190614/ourmid/pngtree-atmospheric-airline-blue-background-material-image_123068.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  color: #FFFFFF;
}
</style>
<meta charset="UTF-8">
<title>Flyway - Book Flight !!</title>
</head>
<body>
<form method = "post" name="bookingConfimationForm" action = "BookingServlet">
<center><h1>Hi <%= session.getAttribute("uname") %> !!</h1></center>
<p>
Choose your Flying date, Returning date, Airlines, Departing City & Destination from the drop down menu!!!!
</p>
<p>Start Date: <input type="text" name="startDate">(DD/MM/YYYY)</p>
<p>End Date: <input type="text" name="endDate">(DD/MM/YYYY)</p>
<p>Choose Airlines :
<select name="airline">
	<option>Please Select</option>
    <option>Kingfisher</option>
    <option>United</option>
    <option>Air India</option>
    <option>Indigo</option>
</select>
</p>
<p>Departure :
<select name="departing">
	<option>Please Select</option>
    <option>Bangalore</option>
    <option>Mumbai</option>
    <option>Kolkata</option>
    <option>Delhi</option>
</select>
</p>
<p>Destination :
<select name="destination">
	<option>Please Select</option>
    <option>Bangalore</option>
    <option>Mumbai</option>
    <option>Kolkata</option>
    <option>Delhi</option>
</select>
<input type="hidden" name="reservationowner" value=<%= session.getAttribute("uname") %>> 
</p>
	<p>
		<button style="font-size:25px;" type = 'submit'>
			Confirm Booking
		</button>
	</p>
</form>
<script type="text/javascript">
    var hiddenUname = sessionStorage.getItem("hiddenUname");
    sessionStorage.setItem("hiddenUname", hiddenUname);
</script>
</body>
</html>