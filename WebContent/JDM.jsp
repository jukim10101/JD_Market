<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- import JDBC package -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to JD Market</title>

</head>
<body>
	<h1>Login to join JDM</h1>
	<form action = "loginCheck.jsp" method = "POST">

		ID: <input type = "text" name = "cID"><br></br>
		Password: <input type = "text" name = "password"><br></br>
		<input type = "submit" value="login"/>
		<input type = "button" value="회원가입"/>

	</form>
</body>
</html>