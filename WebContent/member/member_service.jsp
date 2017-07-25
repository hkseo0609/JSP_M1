<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%! 
	public String getSpec(HttpServletRequest request){
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String email =request.getParameter("email");
		String birth =request.getParameter("birthday");
		String clock = new SimpleDateFormat("yyyy").format(new Date());
		String age = String.valueOf(Integer.parseInt(clock)-Integer.parseInt(birth));
		return age;
	}

public String root(HttpServletRequest request){
	return request.getContextPath();
}

%>