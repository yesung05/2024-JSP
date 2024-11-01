<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLDecoder" %>
<html>
<head><title>쿠키 목록</title></head>
<body>
쿠키 목록<br>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (int i = 0 ; i < cookies.length ; i++) {
%>
	<%= cookies[i].getName() %> = 
	<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %><br>
<%
		}
	} else {
%>
쿠키가 존재하지 않습니다.
<%
	}
%>
<%
Cookie cookie1 = new Cookie(“expire-time”, “1hour”);
cookie1.setMaxAge (60*60); <%-- 1시간 --%>
response.addCookie(cookie1);
%>
다음의 쿠키를 1시간 수명으로 생성했습니다.<br />
<%= cookie1.getName() %>:<%= cookie1.getValue() %><br />
</body>
</html>
