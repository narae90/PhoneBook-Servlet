<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List"%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone Book</title>
</head>
<body>

	<h1> 주소록 Servlet</h1>
	<h4> 목록</h4>





		<form action="hs" method="POST">
		<label for="keyword">검색어</label>
	 	<input type="text" name="name" id="name" />	 	
	 	<input type="submit" value="검색" />
	 	

	

	 <table border=2 width="800" >	
	 
	 	<tr bgcolor=#D5D5D5>
	 		<th >이름</th>
	 		<th >휴대전화</th>
	 		<th >집전화</th>	 		
	 		<th >도구</th>

		</tr>
	 </table>


	
	 	
	 	<p><a href="<%= request.getContextPath() %>/pb?a=index">목록보기</a></p>
	 	
	 	

</body>
</html>