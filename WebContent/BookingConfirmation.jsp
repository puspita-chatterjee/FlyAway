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
<title>Flyway - Booking Confirmation</title>
</head>
<body>
<h1><p>Your booking is Confirmed <%= session.getAttribute("reservationowner") %>!!</p></h1>
<h2><p>Confirmation Number <%= session.getAttribute("confirmationNumber") %>!!</p></h2>
<h3><p>Please keep this for future reference.</p></h3>
<br/>
<p>Thank you for using Flyway !!</p>
<p>Wish you a very happy journey!!</p>
<p>See you Again !!</p>
<form name="bookingConfirmationForm">
	<p>
		<button style="font-size:25px;" type = 'submit' onclick="document.forms['bookingConfirmationForm'].action = 'Logout.jsp'; return true;">
			Log out
		</button>
	</p>
</form>
</body>
</html>