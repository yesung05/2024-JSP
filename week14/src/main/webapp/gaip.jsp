<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 추가</title>
</head>
<body>
	<h2>회원가입</h2>
	<h4>회원이 되어 다양한 혜택을 경험해 보세요!</h4>
	
	<form method="post" action="insertGaip.jsp">
		<p>아이디</p>
		<input type="text" name="id" maxlength="50" placeholder="아이디를 입력해주세요 (6~50자)"><input type="button" value="중복 확인"><br>
		<p>비밀번호</p>
		<input type="password" name="password" maxlength="50" placeholder="비밀번호를 입력해주세요"><br>
		<p>비밀번호 확인</p>
		<input type="password" name="passwordck" maxlength="50" placeholder="동일한 비밀번호를 입력해주세요"><br>
		<p>이름</p>
		<input type="text" name="name" maxlength="16" placeholder="이름을 입력해주세요"><br>
		<p>전화번호</p>
		<input type="text" name="phone" maxlength="30" placeholder="휴대폰 번호를 입력해주세요"><br>
		<p>이메일</p>
		<input type="email" name="email" maxlength="60" placeholder="이메일 주소를 입력해주세요"><br>
		<p>생년월일</p>
		<input type="date" name="birth"><br>
		<input type="submit" value="가입하기">
	</form>
</body>
</html>