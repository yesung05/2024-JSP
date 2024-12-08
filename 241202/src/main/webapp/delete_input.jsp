<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("utf-8");%>

<%
String num = request.getParameter("num"); 
String pass = request.getParameter("pass"); 

Connection conn=null;
PreparedStatement pstmt=null;
String str="";
ResultSet rs = null;

String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
String dbId="jspid";
String dbPass="jsppass";
 
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );


Statement stmt = conn.createStatement();

String strSQL = "SELECT pass FROM tblboard WHERE num = ?";
pstmt = conn.prepareStatement(strSQL);
pstmt.setInt(1, Integer.parseInt(num));

rs = pstmt.executeQuery();
rs.next();

String goodpass = rs.getString("pass").trim();
if (pass.equals(goodpass)){
	strSQL = "DELETE From tblboard WHERE num=?";
	pstmt = conn.prepareStatement(strSQL);
	pstmt.setInt(1, Integer.parseInt(num));
	pstmt.executeUpdate();
	
	strSQL = "UPDATE tblboard SET num = num - 1 WHERE num > ?";
	pstmt = conn.prepareStatement(strSQL);
	pstmt.setInt(1, Integer.parseInt(num));
	pstmt.executeUpdate();

	response.sendRedirect("listboard.jsp");
}else{
	response.sendRedirect("delete_pass.jsp?num=" + num);
}

rs.close();
pstmt.close();
conn.close();
%>
