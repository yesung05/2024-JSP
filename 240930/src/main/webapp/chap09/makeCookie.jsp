<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("홍길동", "utf-8"));
	response.addCookie(cookie);
	Cookie cookie1 = new Cookie(“expire-time”, “1hour”);
	cookie1.setMaxAge (60*60);
	response.addCookie(cookie1);
%>

<html>
<head><title>쿠키생성</title></head>
<body>

다음의 쿠키를 1시간 수명으로 생성했습니다.<br />
<%= cookie1.getName() %>:<%= cookie1.getValue() %><br />

<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"

</body>
</html>
