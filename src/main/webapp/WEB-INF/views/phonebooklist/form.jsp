<%@page import="com.example.phonebook.vo.PhoneBookVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
List<PhoneBookVO> list = (List<PhoneBookVO>)request.getAttribute("list");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone Book (Model 2)</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
	<h1>주소록 Servlet</h1>
	<h4> 목록</h4>
	
	검색어<input type="hidden" name="a" value="search" />
		<input type="text" name="name" id="name" />
		<input type="submit" value="검색" />
		
		

	
	<table border="1" width="800">
		<tr bgcolor=#D5D5D5>
	 		<th width="100" >이름</th>
	 		<th width="300">휴대전화</th>
	 		<th width="300">집전화</th>	 		
	 		<th >도구</th>
			
		</tr>
	</table>
	<% for (PhoneBookVO vo: list) { %>
	<table border=1 width="800">	
		<tr>
			<td width="100"><center><%= vo.getName() %></center></center></td>
			<td width="300"><center><%= vo.getHp() %></center></td>
			<td width="300"><center><%= vo.getTel() %></center></td>
			<td colspan="2" align="center">
				<form action="<%= request.getContextPath() %>/pb"
					method="POST">
					<input type="hidden" name="a" value="delete" />
					<input type="hidden" name="id" value="<%= vo.getId() %>" />	
					<input type="submit" value="삭제" style= />
				</form>
			
		</tr>
	</table>
	
	<% } %>

	<p>
		<a href="<%= request.getContextPath() %>/pb?a=form">새 주소 추가</a>
	</p>
	

	
	
	
</body>
</html>