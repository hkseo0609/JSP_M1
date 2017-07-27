<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../constants/db.jsp" %>
	<%
	String id = request.getParameter("reid");
	String phone = request.getParameter("rephone");
	String email = request.getParameter("reemail");
	String major = request.getParameter("remajor");
	Class.forName(ORACLE_DRIVER);
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("UPDATE member SET phone=?, email=?, major_id=? WHERE id=?");
	pstmt.setString(1, phone);
	pstmt.setString(2, email);
	pstmt.setString(3, major);
	pstmt.setString(4, id);
	String rs = String.valueOf(pstmt.executeUpdate());
	if(rs.equals("1")){
	%>
		<script>
		alert('회원정보 수정 완료!');
		location.href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%=id%>";
		</script>
	<%	
	} else {
	%>	
		<script>
		alert('회원정보 수정 실패 ㅜㅜ 아이디를 올바르게 입력하세요.');
		location.href="<%=request.getContextPath()%>/member/member_search.jsp";
		</script>
	<%
	} 
	%>
