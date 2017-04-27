<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录程序</title>
</head>
<body>
<%!
	public static final String DBDRIVER = "oracle.jdbc.driver.OracleDriver";
	public static final String DBURL = "jdbc:oracle:thin:@localhost:1521:mldn";
	public static final String USER = "scott";
	public static final String PASSWORD = "tiger";
%>
<%
	boolean flag = false; 
	String sql = "select mid from member where mid=? and password=? ";
	Class.forName(DBDRIVER);
	Connection conn = DriverManager.getConnection(DBURL,USER,PASSWORD);
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, request.getParameter("mid"));
	psmt.setString(2, request.getParameter("password"));
	ResultSet rs = psmt.executeQuery();
	if(rs.next()){
		flag = true;
	}
	conn.close();
%>
<%
	if(flag){
%>
		<jsp:forward page = "welcome.jsp"/>
<%
	}else{
%>
	<jsp:forward page = "login.jsp">
		<jsp:param value="loginError" name="error"/>
	</jsp:forward>
<% 
	}
%>
</body>
</html>