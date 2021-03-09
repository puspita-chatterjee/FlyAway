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
<title>Flyway - Registration Success</title>
</head>
<body>
<h1><p>Welcome <%= session.getAttribute("uname") %> <p></h1>
<h2><p>You are successfully registered !!</p></h2>
<form name="bookingForm">
	<input type="hidden" name="hiddenUname" value=<%= session.getAttribute("uname") %>> 
	<p>
		<button style="font-size:25px;" type = 'submit' onclick="document.forms['bookingForm'].action = 'Booking.jsp'; return true;">
			Book Flight
		</button>
	</p>
</form>
<script type="text/javascript">
	session.setAttribute("hiddenUname", session.getAttribute("uname"));
</script>
</body>
</html>