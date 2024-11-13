<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 출력 폼</title>
</head>
<body>

<jsp:useBean id="signin" class="week08.memberInfo" scope="page" />
<jsp:setProperty name="signin" property="id" param="id" />
<jsp:setProperty name="signin" property="name" param="name" />
<jsp:setProperty name="signin" property="email" param="email" />
<jsp:setProperty name="signin" property="address" param="address" /> 

    <table border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>아이디</td>
        <td><jsp:getProperty name="signin" property="id" /></td>
        <td>암호</td>
        <td><jsp:getProperty name="signin" property="id" /></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><jsp:getProperty name="signin" property="name" /></td>
        <td>이메일</td>
        <td><jsp:getProperty name="signin" property="email" /></td>
    </tr>
    <tr>
        <td>주소</td>
        <td colspan="3"><jsp:getProperty name="signin" property="address" /></td>         
    </tr>     
  </table>
</body>
</html>