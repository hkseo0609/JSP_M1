<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>
<%@ include file = "member_service.jsp" %>
<%@ include file = "../constants/db.jsp" %>
<%@ page import="java.sql.*" %>
<%
	Class.forName(ORACLE_DRIVER);
	String id = request.getParameter("search");

%>
	<header>
	<h1 class="gms-h1">MEMBER DETAIL</h1>
	</header>

	<hr /><br />
	<h1 class="gms-text-center">회원 상세정보</h1>
	<table id="detail-tab">
		<tr>
			<th>아이디</th>
			<td></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td></td>
		</tr>
		<tr>
			<th>이름</th>
			<td></td>
		</tr>
		<tr>
			<th>나이</th>
			<td></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td></td>
		</tr>
		<tr>
			<th>성별</th>
			<td></td>
		</tr>
		<tr>
			<th>전공</th>
			<td></td>
		</tr>
		<tr>
			<th>수강과목</th>
			<td></td>
		</tr>
	</table>
	
	
</div>
<%@ include file = "../common/footer.jsp" %>