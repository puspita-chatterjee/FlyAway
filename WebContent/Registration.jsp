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
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
<meta charset="UTF-8">
<title>Flyway - Registration</title>
</head>
<body>

<form method = "post" action = "RegistrationServlet">
	<h1><p>Flyway Registration Form</p></h1>
	<h3><p>** All fields are mandatory</p></h3>
	<table class="center">
		<tr>
			<td><p>Name:</p></td>
			<td><input type = "text" name = 'uname'/></td>
		</tr>
		<tr>
			<td><p>Age:</p></td>
			<td><input type = "text" name = 'age'/></td>
		</tr>
		<tr>
			<td><p>Email:</p></td>
			<td><input type = 'text' name = 'email'/></td>
		</tr>
		<tr>
			<td><p>Address:</p></td>
			<td><input type = "text" name = 'address'/></td>
		</tr>
		<tr>
			<td><p>City:</p></td>
			<td><input type = "text" name = 'city'/></td>
		</tr>
		<tr>
			<td><p>Zip:</p></td>
			<td><input type = "text" name = 'zip'/></td>
		</tr>
		<tr>
			<td><p>Login Id:</p></td>
			<td><input type = 'text' name = 'loginId'/></td>
		</tr>
		<tr>
			<td><p>Password:</p></td>
			<td><input type = 'password' name = 'pass'/></td>
		</tr>
		<tr>
			<td></td>
			<td><button style="font-size:25px;" type = 'submit' >Registration</button></td>
		</tr>
	</table>
</form>

</body>
</html>