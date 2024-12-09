<%@ page contentType = "text/html; charset=utf-8" %>
<%
	session.setAttribute("MEMBERID", "madvirus");
	session.setAttribute("NAME", "홍박사");
%>
<html>
<head><title>세션에 정보 저장</title></head>
<body>

세션에 정보를 저장하였습니다.
<% response.sendRedirect("viewMemberInfo.jsp"); %>
</body>
</html>
