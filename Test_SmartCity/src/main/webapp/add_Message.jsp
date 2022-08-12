<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.MessageDao"%>
	<jsp:useBean id="msg" class="test_smartcity.Message"></jsp:useBean>
	<jsp:setProperty property="*" name="msg" />
	<%
	String catName = request.getParameter("cat_school");
	String schoolName = request.getParameter("School_name");
	//int s_id=Integer.parseInt(request.getParameter("School_Id"));

	System.out.println("school " + catName);
	int i = MessageDao.save(msg, schoolName, catName);
	if (i > 0) {
	%>
	<jsp:forward page="ViewSchool_t.jsp"></jsp:forward>
	<%
	} else {
	response.sendRedirect("addCollege_errorpage_t.jsp");
	}
	%>
</body>
</html>