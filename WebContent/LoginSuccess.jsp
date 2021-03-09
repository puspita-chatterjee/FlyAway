<!-- This JSP is to render Login Confirmation details -->
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
<title>Flyway - Home</title>
</head>
<body>
<h1><p>Welcome to FlyAway <%= session.getAttribute("myname") %>!!!!</p></h1>
<form name="loginSuccessForm">
	<p>
		<button style="font-size:25px;" type = 'submit' onclick="document.forms['loginSuccessForm'].action = 'Booking.jsp'; return true;">
			Book Your Flight
		</button>
	</p>
</form>
</body>
</html>