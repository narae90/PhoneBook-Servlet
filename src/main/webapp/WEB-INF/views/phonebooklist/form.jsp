<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 등록</title>
</head>
<body>
	<h1>주소록 Servlet</h1>
	<p>새 주소록 등록</p>
	<!-- action: 요청을 처리할 페이지(서블릿/JSP)
		method: 요청 방식 -->
	<form action="<%= request.getContextPath() %>/pb"
		method="POST">
		<!-- hidden은 사용자 입력은 아니지만 전송해야 할 데이터 -->
		<input type="hidden" value="add" name="a" />
		<label for="name">이름</label>
		<input type="text" name="name" id="name" /><br />
		<label for="hp">휴대전화</label>
		<input type="text" name="hp" id="hp" /><br />
		<label for="tel">집전화</label>
		<input type="text" name="tel" id="tel" /><br />
		
		<!-- 전송 버튼 -->
		<input type="submit" value="등록" />
	</form>
	
	<!-- 리스트로 돌아가기  -->
	<p>
		<a href="<%= request.getContextPath() %>/pb/">목록 보기</a>
	</p>
</body>
</html>