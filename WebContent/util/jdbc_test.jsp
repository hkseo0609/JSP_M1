<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../constants/db.jsp" %>
<%@ page import = "java.sql.*" %>
<%
	String findName="";
	Class.forName(ORACLE_DRIVER);
	Connection conn = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD);
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	Statement stmt = conn.createStatement();
	String sql="SELECT pwd FROM MEMBER WHERE id = 'bo'";
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		findName = rs.getString("name");
	}
%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<h1>Hello <%=findName %></h1>
</body>
</html>