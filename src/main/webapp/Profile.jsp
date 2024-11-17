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

	<h1>Profile Page</h1>
	<h2>Welcome</h2>
	<H3 style="color: green"><%=userName%></H3>

	<a href="Home.jsp">Home</a> &nbsp; &nbsp;
	<a href="AboutUs.jsp">About Us</a>


	<!-- Navigation Using Button type=Submit-->

	<form action="Home.jsp" method="get" style="display: inline;">
		<button type="submit">Home</button>
	</form>

	<form action="AboutUs.jsp" method="get" style="display: inline;">
		<button type="submit">About Us</button>
	</form>

	<!-- Logout -->
	<form action="LogoutController" method="get" style="display: inline;">
		<button type="submit">Logout Button</button>
	</form>

	<a href="LogoutController">Logout</a>

</body>
</html>