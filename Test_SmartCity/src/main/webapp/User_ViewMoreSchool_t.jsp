<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="School_style.css">
<style type="text/css">
.logo img {
	margin-left: 25px;
	margin-top: 30px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

#logo, #viewMoreSchool_d1, #viewMoreSchool_d2 {
	display: inline-table;
	vertical-align: top;
}

.viewMoreSchool_d1 {
	margin-left: 5%;
	margin-top: 50px;
	font-family: serif;
	font-size: 18px;
	color: white;
	max-width: 600px;
	position: absolute;
}

.viewMoreSchool_d1 a {
	color: white;
}

.viewMoreSchool_d1 a:hover {
	color: gray;
}

#viewMore_s1 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s2 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s3 label {
	display: inline-block;
	margin-right: 150px;
}

.viewMoreSchool_d2 {
	background-color: darkSlateGray;
	position: absolute;
	margin-left: 50%;
	margin-top: 5%;
	max-width: 320px;
	border-radius: 10px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.1);
	max-width: 320px;
}

.viewMoreSchool_d2 h4 {
	font-size: 20px;
	font-family: serif;
	text-align: center;
	color: white;
	padding-top: 10px;
}

.viewMoreSchool_d2 form {
	padding: 2.3rem 2.2rem;
	font-family: serif;
	font-size: 15px;
}

.viewMoreSchool_d2 label {
	margin-right: 40px;
	color: white;
}

.viewMoreSchool_d2 input, textarea {
	margin-left: 2px;
	color: black
}

.viewMoreSchool_d2 input[type="submit"] {
	width: 150px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	font-family: serif;
	margin-top: 10px;
	border-radius: 5px;
}
</style>
<script type="text/javascript">
function enqValidation()() {
	alert("Validattion..");
	var email = document.getElementById('email').value;
	var emaillength = email.length;
	var error_1 = document.getElementById("error_1");
	let u = 0;
	
	/*.................................................*/
	
	if(ValidateEmail(email)){
		error_1.textContent = "Valid email";
		error_1.style.color = "white";
		document.getElementById('email').focus();
		u = 1;	
	}
	else{
		error_1.textContent = "** Invalid email";
		error_1.style.color = "white";
		document.getElementById('email').focus();
		u=0;
		//alert("Not Valid email");
	}
}
function ValidateEmail(inputText){
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(inputText.match(mailformat)){
		//alert("Valid email address!");
		
		return true;
	}
	else{
		
		return false;
		}
	}
</script>
<title>View More School</title>

</head>
<body id="body_viewMoreSchool">
	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	String s_id = request.getParameter("School_Id");
	System.out.print("ID: " + s_id);
	School s = SchoolDao.getMoreSchool(Integer.parseInt(s_id));
	request.setAttribute("s", s);
	%>

	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<%-- <div id="sessions">
		<%
		if (session.getAttribute("user") == null || session.getAttribute("user") == "") {
			response.sendRedirect("User_login_t.jsp");
		}
		%>
		<%=session.getAttribute("user")%>
	</div> --%>
	<input type="hidden" name="cat_school" id="cat_school"
		value="School">
	<input type="hidden" name="School_Id" id="School_Id"
		value="<%= Integer.parseInt(s_id)%>">

	<input type="hidden" name="School_name" id="School_name"
		value="<%=s.getSchoolName()%>">
	<h3>
		<strong>${s.getSchoolName()}</strong> <label
			for="schoollocation">${s.getSchoolPlace()}</label>
	</h3>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
		<li class="nav-item"><a href="Logout.jsp">Logout</a></li>

	</ul>
	<div class="logo" id="logo">
		<label for="schoollogo"><img src="images/logo.jpg"
			alt="School logo" width="150" height="150"></label>
	</div>
	<div class="viewMoreSchool_d1" id="viewMoreSchool_d1">
		<label for="schooltype">${s.getSchoolType()}</label><br> <span
			id="viewMore_s1"><label for="schoolcurriculum">${s.getSchoolCurriculum()}</label>
			<label>Affiliation Number:${s.getSchoolAffiliationNum() }</label></span><br>
		<label for="schoolgrades">${s.getSchoolGrades()}</label><br> <label>Year
			Established:${s.getYear_established()}</label><br> <span
			id="viewMore_s2"> <label for="schoolphone">Ph:
				${s.getSchoolPhone()}</label></span><br> <label>${s.getSchoolAddress()}</label><br>
		<span id="viewMore_s3"> <label for="schoolemail">E-mail:
				${s.getSchoolEmail()}</label><br> <label for="schoolwebsite">Website:<a
				href="">${s.getSchoolWebsite()}</a></label></span><br> <label>Principal:
			${s.getSchoolPrincipal()  }</label><br> <label>About school</label>
		<p>${s.getSchoolAbout()}</p>
		<br>


	</div>
	<div class="viewMoreSchool_d2" id="viewMoreSchool_d2">

		<h4>Admission Enquiry</h4>
		<form action="add_Message.jsp?School_name=${s.getSchoolName()}" method="post" name="enquiryFM"
			onsubmit="return enqValidation()">
			<label>Name:<input type="text" name="name" id="name"
				required="required"></label><br> <label>Email:<input
				type="email" name="email" id="email" required="required"></label><br>
			<span id="error_1"></span> <label>Phone<input type="tel"
				name="phoneNumber" id="phoneNumber" required="required"></label><br>
			<label>Your message</label><br>
			<textarea rows="3" cols="30" name="textMsg" id="textMsg"></textarea>
			<br> <input type="submit" name="submit" value="Submit Enquiry">
		</form>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>