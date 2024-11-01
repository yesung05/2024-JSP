<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
버퍼크기: <%= out.getBufferSize() %> 
남은 버퍼크기: <%= out.getRemaining () %> 
auto flush 여부: <%= out.isAutoFlush() %> 
%>
	
</body>
</html>