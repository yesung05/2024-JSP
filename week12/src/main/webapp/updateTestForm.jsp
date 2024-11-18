<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>레코드 수정</title>
</head>
<body>
  <h2>member테이블의 레코드 수정</h2>
    
  <form method="post" action="updateTestPro.jsp">
      이름을 변경할 사람의  아이디와 비밀번호를 정확하게 입력하시오<br><br>
      
      아이디: <input type="text" name="id" maxlength="50"><br>
      패스워드: <input type="password" name="passwd" maxlength="16"><br>
      변경할 이름: <input type="text" name="name" maxlength="10"><br>
      <input type="submit" value="입력완료">
  </form>
</body>
</html>