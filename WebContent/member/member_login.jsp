<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>
<%@ include file = "member_service.jsp" %>
<header>
<h1 class="gms-h1">ADMIN LOGIN</h1>
</header>
<hr /><br />
	<div id="image" class="gms-image"><a href="<%=root(request) %>/index.jsp"><img src="<%=root(request) %>/img/login.JPG" alt="" /></a></div><br />
		<form id="login_form" action="" class="form-edit">
		<fieldset>
		<legend>로그인</legend>
			<span class="login-span">ID</span>
			<input type="text" /><br />
			<label>PASSWORD</label><input type="password" /><br />
			<mark style="font-size: 13px"> *ID는 숫자 포함 8글자 이내*</mark><br />
			<input type="submit" value="LOING" class="submit-pink">
			<input type="submit" value="CANCLE" class="submit-blue">
		</fieldset>
		</form>
</div>	
<%@ include file = "../common/footer.jsp" %>