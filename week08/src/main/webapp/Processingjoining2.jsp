<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 폼</title>
</head>
<body>

<jsp:useBean id="signin" class="week08.memberInfo" scope="page" />

    <table border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>아이디</td>
        <td colspan="3"><%= request.getParameter("id") %></td>
        <td>암호</td>
        <td colspan="3"><%= request.getParameter("id") %></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><%= request.getParameter("name") %></td>
        <td>이메일</td>
        <td><%= request.getParameter("email") %></td>
    </tr>
    <tr>
        <td>주소</td>
        <td colspan="3"><%= request.getParameter("address") %></td>         
    </tr>     
  </table>
</body>
</html>