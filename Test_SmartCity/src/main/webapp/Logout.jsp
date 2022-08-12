<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(session.getAttribute("user")!="Administrator"){
		session.invalidate();
		response.sendRedirect("User_login_t.jsp");
	}
	else{
		session.invalidate();
		response.sendRedirect("Admin_login_t.jsp");
	}
	%>
</body>
</html>