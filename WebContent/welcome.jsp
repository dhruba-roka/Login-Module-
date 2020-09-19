<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	/* For cache-control or cache data falne or (logout vaepaxi,back garda login nahune) */ 
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");//Http 1.1
	response.setHeader("Progma", "no-cache");//Http 1.0
	response.setHeader("Expires", "0");//proxies

	
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}

%>
Welcome! ${username} <!-- jstl , coming from session  --> 
<br>
<a href="videos.jsp">Videos here</a><br><br>

<form action="Logout" method="post">
<input type="submit" value="Logout">

</form>
</body>
</html>