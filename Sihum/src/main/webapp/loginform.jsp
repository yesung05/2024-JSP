<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<h3> 친구 이메일 관리 프로그램</h3>
<hr>
	<form method="post" action="login.jsp">
		<p>사용자 ID: <input type="text" name="id" maxlength="50" placeholder="아이디를 입력해주세요"></p>
		<p>비밀번호: <input type="password" name="password" maxlength="50" placeholder="비밀번호를 입력해주세요"></p>
		<input type="submit" value="로그인">
	</form>
</body>
</html>