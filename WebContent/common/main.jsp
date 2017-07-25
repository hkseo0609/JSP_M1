<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ include file="../constants/db.jsp" %>
<%@ include file="common_service.jsp" %>
<%
	String clock = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss").format(new Date());
	Class.forName(ORACLE_DRIVER);
	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("SELECT pwd FROM MEMBER where id=?");
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		String rspwd = rs.getString("pwd");
		if(rspwd.equals(pass)){
		%>
		<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Hello HTML</title>
<link rel="stylesheet" href="../css/member.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="wrapper">
<header>
<h1 class="gms-h1">I N D E X</h1>
</header>
<div class="gms-right">현재 시각 : <%=clock %></div>
<br />
<hr />

<div id="container">
<table id="index-tab">
	<tr id="index-tab-tr">
		<td><i class="fa fa-heart"></i> 학생관리</td>
		<td><i class="fa fa-file"></i> 성적관리</td>
		<td><i class="fa fa-bars"></i> 게시판</td>
		</tr>
	<tr>
		<td>
			<ul class="index-ul" >
				<li><a href="../member/member_add.jsp">학생정보 추가</a></li>
				<li><a href="../member/member_list.jsp">학생정보 목록</a></li>
				<li><a href="../member/member_search.jsp">학생 상세정보</a></li>
				<li><a href="../member/member_update.jsp">학생정보 수정</a></li>
				<li><a href="../member/member_delete.jsp">학생정보 삭제</a></li>
				
			</ul>
			
		</td>
		
		<td>
		<ul  class="index-ul">
				<li><a href="../grade/grade_add.jsp">성적 입력</a></li>
				<li><a href="../grade/grade_list.jsp">성적 목록</a></li>
				<li><a href="../grade/grade_detail.jsp">성적 상세</a></li>
				<li><a href="../grade/grade_update.jsp">성적 수정</a></li>
				<li><a href="../grade/grade_delete.jsp">성적 삭제</a></li>
		</ul>
		</td>
		<td >
		<ul  class="index-ul">
				<li><a href="../board/board_write.jsp">게시글 쓰기</a></li>
				<li><a href="../board/board_list.jsp">게시글 목록</a></li>
				<li><a href="../board/board_detail.jsp">게시글 내용</a></li>
				<li><a href="../board/board_update.jsp">게시글 수정</a></li>
				<li><a href="../board/board_delete.jsp">게시글 삭제</a></li>
		</ul>
		</td>
			</tr>
</table>
</div>	
		<% 
		}else{
			%>
			<script>
			alert('잘못된 비밀번호 입니다.');
			location.href="../index.jsp";
			</script>
			<%
		}
	}else{
		%>
		<script>
		alert('없는 아이디입니다. 회원가입하세요.');
		location.href="../member/member_add.jsp";
		</script>
		<%
	}
%>

<%@ include file = "footer.jsp" %>