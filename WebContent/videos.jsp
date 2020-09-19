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
/* Prevent from back button or cache-conntrol mechanism */
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");//Http 1.1
	response.setHeader("Progma", "no-cache");//Http 1.0
	response.setHeader("Expires", "0");//proxies 

if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}

%>

<h3>The wedding video of Dhruba & sarita:</h3><br><br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/MxvrNW0k7kY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>