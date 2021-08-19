<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
</head>
<body>
	<h1>새 주소 등록</h1>
	<form action="<%= request.getContextPath() %>/pb"
		method="POST">
		
		<input type="hidden" value="add" name="a" />
		<label for="name">이름</label><br />
		<input type="text" name="name" id="name" /><br />
		<label for="hp">휴대전화</label><br />
		<input type="text" name="hp" id="hp" /><br />
		<label for="tel">집전화</label><br />
		<input type="text" name="tel" id="tel" /><br />
		
		<input type="submit" value="주소 등록" />
	</form>
	
	<p>
		<a href="<%= request.getContextPath() %>/phonebooklist/">목록 보기</a>
	</p>
	

</body>
</html>

