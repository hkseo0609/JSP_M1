<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="../constants/db.jsp" %>

<%! 
public String root(HttpServletRequest request){
	return request.getContextPath();
}

public Map<String,String> getDetail(HttpServletRequest request){
	Map<String,String> map = new HashMap<>();
	String id = request.getParameter("id");
	try{
		Class.forName(ORACLE_DRIVER);
		PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("select * from member where id=?");
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		//String name="", ssn="", regdate="", phone="", email="", major_id="";
		if(rs.next()){
			map.put("id",rs.getString("id"));
			map.put("name",rs.getString("name"));
			map.put("ssn",rs.getString("ssn"));
			map.put("regdate", rs.getString("regdate"));
			map.put("phone",rs.getString("phone"));
			map.put("email",rs.getString("email"));
			map.put("major_id",rs.getString("major_id"));
		}
	}catch(Exception ex){
		
	}
	return map;
		
}

public List<Map<String, String>> getList(HttpServletRequest request){
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = null;
	String action = request.getParameter("action");
	try{
		Class.forName(ORACLE_DRIVER);
		PreparedStatement pstmt = null;
		if(action.equals("list")){
			pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("select * from member");
		}else{
			String name = request.getParameter("name");
			pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("select * from member where name=?");
			pstmt.setString(1, name);
		}
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			map = new HashMap<>();
			map.put("id", rs.getString("id"));
			map.put("name", rs.getString("name"));
			map.put("regdate", rs.getString("regdate"));
			map.put("ssn", rs.getString("ssn"));
			map.put("phone", rs.getString("phone"));
			map.put("email", rs.getString("email"));
			map.put("major_id", rs.getString("major_id"));
			
			list.add(map);
		}
		
	}catch(Exception ex){
		
	}
	
	return list;
}

public Map<String,String> getUpdate(HttpServletRequest request){
	Map<String,String> map = new HashMap<>();
	String id = request.getParameter("id");
	try{
		Class.forName(ORACLE_DRIVER);
		PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("select * from member where id=?");
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			map.put("id",rs.getString("id"));
			map.put("name",rs.getString("name"));
			map.put("ssn",rs.getString("ssn"));
			map.put("phone",rs.getString("phone"));
			map.put("email",rs.getString("email"));
			map.put("major_id",rs.getString("major_id"));	
		}
	}catch(Exception ex){
		
	}
	return map;
}


%>