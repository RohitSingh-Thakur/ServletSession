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

	<h1>About Us</h1>
	<h2>Welcome</h2>
	<H3 style="color: green"><%=userName%></H3>

	<a href="Home.jsp">Home</a> &nbsp; &nbsp;
	<a href="Profile.jsp">Profile</a>

	<!-- Navigation Using Button type=Submit-->

	<form action="Home.jsp" method="get" style="display: inline;">
		<button type="submit">Home</button>
	</form>

	<form action="Profile.jsp" method="get" style="display: inline;">
		<button type="submit">Profile</button>
	</form>

</body>
</html>