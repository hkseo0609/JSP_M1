<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ include file ="../constants/db.jsp" %>
<%
	Class.forName(ORACLE_DRIVER);
	String id = request.getParameter("id");
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("DELETE FROM member WHERE id=?");
	pstmt.setString(1, id);
	String rs = String.valueOf(pstmt.executeUpdate());
	if(rs.equals("1")){
%>
		<script>
		alert('회원정보 삭제 완료!');
		location.href="<%=request.getContextPath()%>/member/member_list.jsp?action=list";
		</script>	
<%	
}else{
%>
		<script>
		alert('회원정보 수정 실패 ㅠㅠ');
		location.href="<%=request.getContextPath()%>/member/member_list.jsp";
		</script>	
<%	
} 
%>