<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//String userName = (String) request.getAttribute("userName");
	String userName = (String) session.getAttribute("name_key");
	%>

	<h1>Home Page</h1>
	<h2>Welcome</h2>
	<H3 style="color: green"><%=userName%></H3>

	<a href="Profile.jsp">Profile</a>
	<a href="AboutUs.jsp">About Us</a>



	<!-- Navigation Using Button type=Submit-->

	<form action="Profile.jsp" method="get" style="display: inline;">
		<button type="submit">Profile</button>
	</form>

	<form action="AboutUs.jsp" method="get" style="display: inline;">
		<button type="submit">About Us</button>
	</form>

</body>
</html>