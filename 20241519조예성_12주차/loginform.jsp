<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<form method="post" action="login.jsp">
		<p>아이디</p>
		<input type="text" name="id" maxlength="50" placeholder="아이디를 입력해주세요"><br>
		<p>비밀번호</p>
		<input type="password" name="password" maxlength="50" placeholder="비밀번호를 입력해주세요"><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>