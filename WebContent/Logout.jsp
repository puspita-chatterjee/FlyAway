<!-- This JSP is to render Logout details -->
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
<title>Flyway - Logout</title>
</head>
<body>
<h2><p>Welcome <% session.invalidate(); %>

<% response.sendRedirect("Login.html"); %>
</p></h2>
</body>
</html>