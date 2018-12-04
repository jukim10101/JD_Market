<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- import JDBC package -->
 <%@ page language="java" import="java.text.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h1>로그인 확인 페이지 </h1>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	String serverIP = "localhost";
	String strSID = "JDM? serverTimezone = UTC";
	String portNum = "3306";
	String url = "jdbc:mysql://"+serverIP+":"+portNum+"/"+strSID;
	//jdbc:mysql://localhost:3306/JDM
	String user = "root";
	String pass = "MySQL10!";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	String checkPwd=null;
	try {
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn=DriverManager.getConnection(url,user,pass);
	} catch(Exception e) {
		System.out.println("Fail" + e.toString());
	}
	
	try {
	String query = "SELECT * FROM CUSTOMER WHERE ID = ?";
	pstmt = conn.prepareStatement(query);
	pstmt.setInt(1, Integer.parseInt(id));
	rs = pstmt.executeQuery();
	
	
	if(rs.next()) {
		checkPwd = rs.getString("Pass_word");
	}
	if(checkPwd.equals(password)) {
		
		out.println("<script>");
		out.println("<script>alert('로그인 되었습니다.')");
		out.println("location.href=loginCheck.jsp'");
		out.println("</script>");
		
		//response.sendRedirect(".jsp");
		
		
	}else{
		out.println("<script>");
		out.println("alert('정보가 틀렸습니다!')");
		out.println("location.href= 'main.jsp'");
		out.println("</script>");
		
	}
	
	pstmt.close();
	conn.close();
	
	} catch(Exception e) {
		System.out.println("Fail" + e.toString());
	}
	
	
	
	
	
	
	
%>
</body>
</html>