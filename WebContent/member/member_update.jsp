<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>
<%@ include file = "member_service.jsp" %>
<%@ page import="java.sql.*" %>
<%
	Map<String, String> map = getUpdate(request);			
%>
	<header>
	<h1 class="gms-h1">MEMBER DETAIL</h1>
	</header>
	<hr /><br />
	<h1 class="gms-text-center">회원 상세정보</h1>
	<form id="mem_update" action="<%=root(request) %>/member/service_update.jsp" method="get">
	<table id = "detail-tab">
		<tr>
			<td colspan="2" rowspan="3" align="left" width="20%"><img src="<%=root(request) %>/img/profile.JPG"></td>
			<th> 이름 </th>
			<td><%= map.get("name")%></td>
		</tr>
		<tr>
			<th>ID </th>
			<td><input type="hidden" name="reid" value="<%=map.get("id")%>"><%=map.get("id")%></td>
		</tr>
		<tr>
			<th> SSN </th>
			<td><%= map.get("ssn") %></td>
		</tr>
		<tr>
			<th >전화</th>
			<td colspan="3"><input type="text" name="rephone" value="<%= map.get("phone")%>"/></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td colspan="3"><input type="text" name="reemail" value="<%= map.get("email")%>"/></td>
		</tr>
		<tr>
			<th>전공</th>
			<td colspan="3"><input type="text" name="remajor" value="<%= map.get("major_id")%>"/></td>
		</tr>
	</table>
	<div id="btn_div">
	<br />
	<input type="submit" id="confirm_btn" value="수 정" />
	<input type="button" id="cancle_btn" onclick="javascript:cancle()" value="취 소" />
	</div>
	</form>
	<script>
		function cancle() {
			location.href="<%=root(request) %>/member/member_detail.jsp?id=<%=map.get("id")%>";
			
		}
	</script>
	<%@ include file = "../common/footer.jsp" %>


