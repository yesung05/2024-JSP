<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<h2>JDBC드라이버 테스트</h2>

<%
  Connection conn=null;

  try{
	  //사용하고자 하는 DataBase명을 포함한 URL
	 String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
     String dbId="jspid";
     String dbPass="jsppass";
	
     //DataBase와 연동하기위해 DriverManager에 등록한다
	 Class.forName("com.mysql.jdbc.Driver");
     
	 //DriverManager로부터 Connection 객체를 얻어온다
	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	 out.println("제대로 연결되었습니다.");
  }catch(Exception e){ //예외가 발생하면 예외상황 쳌크
	 e.printStackTrace();//예외가 발생하면 예외가 발생한 과정을 표시한다
  }
%>