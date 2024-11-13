<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 추가</title>
</head>
<body>
	<h2>member 테이블에 레코드 추가</h2>
	
	<form method="post" action="insertTestPro.jsp">
		아이디: <input type="text" name="id" maxlength="50"><br>
		패스워드: <input type="password" name="passwd" maxlength="16"><br>
		이름: <input type="text" name="name" maxlength="10"><br>
		<input type="submit" value = "입력완료"><br>
	</form>
</body>
</html>