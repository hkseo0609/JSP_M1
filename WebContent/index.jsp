<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member/member_head.jsp" %>
<header>
<h1 class="gms-h1">ADMIN LOGIN</h1>
</header>
<hr /><br />
	<div id="image" class="gms-image"><a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/img/login.JPG" alt="" /></a></div><br />
		<form id="login_form" action="common/main.jsp" method="get">
		<fieldset class="form-edit">
		<legend>로그인</legend>
			<span class="login-span">ID</span>
			<input type="text" name="id" value="you"/><br />
			<label>PASSWORD</label><input type="password" name="pwd" value="11111"/><br />
			<mark style="font-size: 13px"> *ID는 숫자 포함 8글자 이내*</mark><br />
			<input type="submit" value="LOING" class="submit-pink">
			<input type="reset" value="CANCLE" class="submit-blue">
		</fieldset>
		</form>
<%@ include file = "../common/footer.jsp" %>