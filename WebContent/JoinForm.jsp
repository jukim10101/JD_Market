<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지 </title>
</head>
<body>

<form action = "joinInsert.jsp" method = "POST">
		<!-- Practice for Input Form -->
		<h4>Please provide your information.</h4>
		<h3>*는 필수 입력 정보 입니다.</h3>
		ID(* 숫자만 가능): <input type = "text" name = "joinID">
		<br />
		Password(*): <input type = "text" name = "joinPassword">
		<br />
		Name(*): <input type = "text" name = "joinName">
		<br />
		Age: <input type = "number" name = "joinAge" />
		<br />
		Sex: <input type = "checkbox" name = "joinSex" value = "Female"/>Female
		<input type = "checkbox" name = "joinSex" value = "Male"/>Male
		<br />
		Job: <input type = "text" name = "joinJob">
		<br />
		Phone no: <input type = "text" name = "joinPhone_no">
		<br />
		Address: <input type = "text" name = "joinCity" placeholder="city">
		<input type = "text" name = "joinDetail" placeholder="상세주소 ">
		<br />
		<input type = "submit" value = "Submit" />
		</form>
</body>
</html>