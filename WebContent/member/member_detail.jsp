<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>
<%@ include file = "member_service.jsp" %>
<%
	Map<String,String> map = getDetail(request);
%>
			<header>
			<h1 class="gms-h1">MEMBER DETAIL</h1>
			</header>
			<hr /><br />
			<h1 class="gms-text-center">회원 상세정보</h1>
			<table id = "detail-tab">
				<tr>
					<td colspan="2" rowspan="3" align="left" width="20%"><img src="<%=request.getContextPath()%>/img/profile.JPG"></td>
					<th> 이름 </th>
					<td><%=map.get("name") %></td>
				</tr>
				<tr>
					<th>ID </th>
					<td><%=map.get("id") %></td>
				</tr>
				<tr>
					<th> SSN </th>
					<td><%=map.get("ssn") %></td>
				</tr>
				<tr>
					<th>전화</th>
					<td colspan="3"><%=map.get("phone") %></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td colspan="3"><%=map.get("email") %></td>
				</tr>
				<tr>
					<th>전공</th>
					<td colspan="3"><%=map.get("major_id") %></td>
				</tr>
			</table>
			<div id="btn_div">
			<br />
			<button id="list_btn" onclick="javascript:goList()">목 록</button>
			<button id="update_btn" onclick="javascript:goUpdate()">수 정</button>
			</div>
			<script>
			function goList() {
				location.href="<%=request.getContextPath()%>/member/member_list.jsp?action=list";
				
				
			}
			function goUpdate() {
				location.href="<%=request.getContextPath()%>/member/member_update.jsp?id=<%=map.get("id")%>";
			}
			</script>
			<%@ include file = "../common/footer.jsp" %>


	