<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%  request.setCharacterEncoding("utf-8"); %>

<%
  String id= request.getParameter("id");
  String passwd= request.getParameter("password");
  
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
    String dbId="jspid";
    String dbPass="jsppass";
	 
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
	String sql= "select name, id, passwd from member where id= ?";
	pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
	rs=pstmt.executeQuery();
    
	if(rs.next()){ 
		String rId=rs.getString("id");
		String rPasswd=rs.getString("passwd");
      if(id.equals(rId) && passwd.equals(rPasswd)){
    	  session.setAttribute("id", rs.getString("id"));
    	  session.setAttribute("username", rs.getString("name"));
    	  response.sendRedirect("list.jsp");
    	  } 
      }
       %>
<html>
<head>
<title>레코드 수정</title>
</head>
<body>


</body>
</html>