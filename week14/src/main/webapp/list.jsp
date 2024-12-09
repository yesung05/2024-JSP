<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>

<% request.setCharacterEncoding("utf-8");
String uname = (String)session.getAttribute("username");
String uid = (String)session.getAttribute("id");
 // session.setAttribute("id", uid);
%>
<HTML>
<HEAD>
<TITLE> 게시판 </TITLE>

</HEAD>
<body><%  
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
   String dbId="jspid";
   String dbPass="jsppass";
 
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	%>
	
		
 <h3><%= uname%>님의 친구 이메일 자료입니다!!</h3>
 <p>친구 이름으로 오름차순 정렬되었습니다.</p>
 <table border=1>
 	<tr>
 		<th>친구이름</th>
 		<th>이메일 주소</th>
 	</tr>
 	<%	
 	String sql= "select f_name, f_email from fmail where id = ? order by f_name asc";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,uid);
	rs=pstmt.executeQuery(); 
	while (rs.next()) {
		String fname = rs.getString("f_name");
	    String fmail = rs.getString("f_email");
	    %><tr>
	    <td><%=fname%></td>
	    <td><%=fmail%></td>
	    </tr>
	<%
	}
	%>

 </table>
 	<a href='input.html'>이메일 등록</a>
 <hr>
 
</body>
</html>