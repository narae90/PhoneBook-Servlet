<%@page import="com.example.phonebook.vo.PhoneBookVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 요청 객체에서 list 속성 받아오기
List<PhoneBookVO> list = (List<PhoneBookVO>)request.getAttribute("list");
%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>주소록 Servlet(Model 1)</h1>
	
	<!-- 이메일 리스트: 목록 -->
	<!-- 루프 시작 -->
	<% for (PhoneBookVO vo: list) { %>
	<table border="1">
		<!-- 행 -->
		<tr>
			<th>이름</th>
			<td><%= vo.getName() %></td>
		</tr>
		<tr>
			<th>휴대전화</th>
			<td><%= vo.getHp() %></td>
		</tr>
		<tr>
			<th>집전화</th>
			<td><%= vo.getTel() %></td>
		</tr>
		<tr>
			<td colspan="2">
			<!-- 삭제 폼 -->
				<form action="<%= request.getContextPath() %>/pb"
					method="POST">
					<input type="hidden" name ="a" value="delete" />
 					<input type="hidden" name="id" value="<%= vo.getId() %>" />	 
					<input type="submit" value="삭제" />
				</form>
			</td>
		</tr>
	</table>
	<br />
	<% } %>
	<!-- 루프의 끝 -->
	
	<!-- 작성 폼으로 이동 -->
	<p>
		<a href="<%= request.getContextPath() %>/phonebooklist/form.jsp">추가 주소 등록</a>
	</p>
	
</body>
</html>