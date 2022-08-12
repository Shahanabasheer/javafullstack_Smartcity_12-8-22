<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String str=request.getParameter("School_name");
	System.out.print("ID: "+str);
	School s = SchoolDao.getMoreSchool(14);
	request.setAttribute("s", s);
	
	%>
</body>
</html>