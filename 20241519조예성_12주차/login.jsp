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

  try{
	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
    String dbId="jspid";
    String dbPass="jsppass";
	 
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
	String sql= "select id, password from signin where id= ?";
	pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
	rs=pstmt.executeQuery();
    
	if(rs.next()){ 
		String rId=rs.getString("id");
		String rPasswd=rs.getString("password");
      if(id.equals(rId) && passwd.equals(rPasswd)){
		
%>
<html>
<head>
<title>레코드 수정</title>
</head>
<body>
</body>
</html>
<%
	out.println("로그인에 성공하였습니다.");
	String selsql= "SELECT * FROM signin";
	pstmt=conn.prepareStatement(selsql);
	rs=pstmt.executeQuery();
	%>
	<h2>signin 테이블의 레코드 표시</h2>
	  <table border="1">
	  <tr>
	  	<td width="100">아이디</td>
	  	<td width="100">패스워드</td>
	  	<td width="100">이름</td>
	  	<td width="100">전화번호</td>
	  	<td width="100">이메일</td>
	  	<td width="100">생년월일</td>
	  </tr>
	  <%
	while(rs.next()){
	  String getid = rs.getString("id");
	  String password= rs.getString("password");
	  String name= rs.getString("name");
	  String phone= rs.getString("phone");
	  String email= rs.getString("email");
	  String birth= rs.getString("birth");
	  %>
	 <br>
	 <tr>
	     <td width="100"><%=getid%></td>
	     <td width="100"><%=password%></td>
	     <td width="100"><%=name%></td>
	     <td width="100"><%=phone%></td>
	     <td width="100"><%=email%></td>
	     <td width="100"><%=birth%></td>
    </tr>
	<%}


     } else
		out.println("패스워드가 틀렸습니다.");
	}else
		 out.println("아이디가 틀렸습니다.");
  }catch(Exception e){ 
	  e.printStackTrace();
  }finally{
	  if(rs != null) 
		 try{rs.close();}catch(SQLException sqle){}
	  if(pstmt != null) 
		 try{pstmt.close();}catch(SQLException sqle){}
	  if(conn != null) 
		 try{conn.close();}catch(SQLException sqle){}
  }
  
%>