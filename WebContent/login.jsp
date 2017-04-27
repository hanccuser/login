<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录程序</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css"/>
<script type="text/javascript" src="js/mldn_util.js"></script>
<script type = "text/javascript" src="js/login.js"></script>

</head>
<body>
<%
	String error = request.getParameter("error");
%>
<h1><%=error == null ? "": "对不起，接着在水里待着吧" %></h1>
<form action="check.jsp"method = "post" id = "loginForm">
<table>
<tr>
	<td>用户名:</td>
	<td><input type = "text" name = "mid" id="mid" class = "init" ></td>
</tr>
<tr>
	<td>密码：</td>
	<td><input type="password" name = "password" id = "password" class = "init"></td>
</tr>
<tr>
	<td colspan = "2">
	<input type = "submit" value = "登录">
	<input type = "reset" value = "重置"></td>
</tr>

</table>
</form>

</body>
</html>