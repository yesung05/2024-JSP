    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>

<% 
	String uid = (String)session.getAttribute("id");
   String name = request.getParameter("newname");
   String email = request.getParameter("newemail");

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
 
  String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
  String dbId="jspid";
  String dbPass="jsppass";
 	 
  Class.forName("com.mysql.jdbc.Driver");
  conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

  String sql= "insert into fmail values (?,?,?)";
  pstmt=conn.prepareStatement(sql);
  pstmt.setString(1, name);
  pstmt.setString(2, email);
  pstmt.setString(3, uid);
  pstmt.executeUpdate();
 	 
  str= "입력 되었습니다.";
 %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><%=str %></p>
	<br>
	<hr>
	<a href="list.jsp">목록보기</a>
</body>
</html>