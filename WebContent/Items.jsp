<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%@ page language="java" import="java.text.*, java.sql.*,JDM_package.ItemDTO, JDM_package.ItemMgr
 , java.util.ArrayList" %>
 <%@ page import = "JDM_package.ItemDTO" %>
 <jsp:useBean id="productMgr" class="JDM_package.ItemMgr" />
<html>
<head>
<meta charset="UTF-8">
<title>Item List</title>
</head>
<body>
<h2>JDM Market</h2>
<!-- < % @include file=   -->

<table style="width:90%">
	<Tr style="background-color: silver">
		<th>상품</th><th>가격</th><th>상세보기</th>
	</Tr>
<% 
ArrayList<ItemDTO> list = ItemMgr.getItemAll();

	
for(ItemDTO d:list){
%>

<tr style="text-align: center;">
	<td><%=d.getItem_Name() %></td>
	<td><%=d.getPrice() %></td>
	<td><a href="javascript:product">보기 <br /></td>
</tr>

<%
}
%>
</table>
<!-- < % @include file="guest_bottom.jsp" %> -->
</body>
</html>