<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
	<h1>새 주소 등록</h1> <br />
		
		
<form action="<%= request.getContextPath() %>/pb" method="POST">
<input type="hidden" value="add" name="a" />

  <div class="col-md-2">
    <label for="name" >이름</label>
    <input type="text" class="form-control" name= "name" id="name"><br />
  </div>
  <div class="col-2">
    <label for="inputAddress" class="form-label">휴대전화</label>
    <input type="text" class="form-control" name="hp" id="hp" placeholder="숫자를 입력하세요."><br />
  </div>
  <div class="col-2">
    <label for="inputAddress2" class="form-label">집전화</label>
    <input type="text" class="form-control" name="tel" id="tel" placeholder="숫자를 입력하세요." /><br />
  </div>

  <div class="col-12">
    <button type="submit" class="btn btn-primary" value="주소 등록">등록하기</button>
  </div>
</form><br />
		
<!-- 	
	<form action="<%= request.getContextPath() %>/pb"
		method="POST"> </form><br />

		<input type="hidden" value="add" name="a" />
		
		<label for="name">이름</label><br />		
		<input type="text" name="name" id="name" /><br />
		
		<label for="hp">휴대전화</label><br />		
		<input type="text" name="hp" id="hp" /><br />
		
		<label for="tel">집전화</label><br />
		<input type="text" name="tel" id="tel" /><br />
		
		<input type="submit" value="주소 등록" />
	</form>
-->


	<p>
		<a href="<%= request.getContextPath() %>/pb?a=index">목록 보기</a>
	</p>
	

</body>
</html>

