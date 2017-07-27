<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ include file="../constants/db.jsp" %>
<%
Class.forName(ORACLE_DRIVER);
String id = request.getParameter("id");
String pass = request.getParameter("pwd");
String name = request.getParameter("name");
String birth = request.getParameter("birthday");
String email = request.getParameter("email");
PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("insert into member(id,pwd,name,ssn,regdate,email) values(?,?,?,?,sysdate,?)");
pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
pstmt.setString(4, birth);
pstmt.setString(5, email);
String rs = String.valueOf(pstmt.executeUpdate());

if(rs.equals("1")){ %>
	<script>
	alert('회원가입 완료!');
	location.href="<%=request.getContextPath() %>/index.jsp";
	</script>
<%
} else {
%>
	<script>
	alert('입력 내용을 확인해 주세요');
	</script>
<%
}
%>