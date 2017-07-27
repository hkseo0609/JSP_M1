<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>
<%@ include file = "member_service.jsp" %>
<%
	List<Map<String, String>> map = getList(request);
%>
	<header>
	<h1 class="gms-h1">MEMBER LIST</h1>
	</header>
	<hr /><br />
		<!-- id, pwd, name, ssn, regdate, email, major, subject -->
		<table id="mem-list-tab">
			<tr>
				<th style="width: 5%">No</th>
				<th style="width: 10%">아이디</th>
				<th style="width: 10%">이름</th>
				<th style="width: 10%">생년월일</th>
				<th style="width: 15%">이메일</th>
				<th style="width: 10%">전화번호</th>
				<th style="width: 10%">전공</th>
				<th style="width: 10%">학점</th>
				<th style="width: 10%">가입날짜</th>
				<th style="width: 10%">수정/삭제</th>
			</tr>
			<%
			int num = map.size();
			for(int i=0; i<map.size(); i++){
				Map<String,String> map2 = map.get(i);
			%>
			<tr>
				<td><%=num-- %></td>
				<td><%=map2.get("id") %></td>
				<td><a href="<%= request.getContextPath()%>/member/member_detail.jsp?id=<%=map2.get("id")%>"><%=map2.get("name") %></a></td>
				<td><%=map2.get("ssn") %></td>
				<td><%=map2.get("email") %></td>
				<td><%=map2.get("phone") %></td>
				<td><%=map2.get("major_id") %></td>
				<td>java</td>
				<td><%=map2.get("regdate") %></td>
				<td><a href="<%= request.getContextPath()%>/member/member_update.jsp?id=<%=map2.get("id")%>">수정</a> <a href="<%= request.getContextPath()%>/member/service_delete.jsp?id=<%=map2.get("id")%>">삭제</a></td>
			</tr>
			<% 	
			} %>
		</table>
<%@ include file = "../common/footer.jsp" %>