<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>
<%@ include file = "member_service.jsp" %>

<header>
<h1 class="gms-h1">MEMBER SEARCH</h1>	
</header>
<hr /><br />
<form id="member_search" action="<%=root(request) %>/member/service_search.jsp" method="get">
	검색조건  <select name ="option"> 
	<option value="id">ID</option>
	<option value="name" >이름</option>
	</select>
	<input type="text" name="search">
	<input type="submit" value="검색" />
</form>
<%@ include file = "../common/footer.jsp" %>