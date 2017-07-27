<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../constants/db.jsp" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%

Class.forName(ORACLE_DRIVER);
PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("select id from member");
ResultSet rs = pstmt.executeQuery();
List<String> list = new ArrayList<>();

while(rs.next()){
	list.add(rs.getString("id"));
}

int result=0;
for(int i=0; i<list.size(); i++){
	Statement stmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).createStatement();
	result = stmt.executeUpdate(String.format("UPDATE member SET email='%s@test.net' where id='%s'", list.get(i),list.get(i)));
}
if(result==1){
	%>
	<script>
	alert('이메일 수정 완료');
	location.href="<%=request.getContextPath()%>/index.jsp";
	</script>
<% 	
}else{
	%>
	<script>
	alert('이메일 수정 실패');
	location.href="<%=request.getContextPath()%>/index.jsp";
	</script>
<%
}
%>