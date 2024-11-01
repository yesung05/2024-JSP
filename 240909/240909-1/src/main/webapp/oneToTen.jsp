<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>1-10까지의 합</title></head>
<body>
<%
	int sum = 0;
	int num = 1;
	int to = 10;
	for (int i = num ; i <= to ; i++) {
		sum = sum + i;
	}
%>
<%= num%> 부터 <%= to %>까지의 합은 <%= sum %> 입니다.
</body>
</html>
