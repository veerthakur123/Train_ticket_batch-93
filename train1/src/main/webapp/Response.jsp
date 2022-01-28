<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Response Page</title>
</head>
<body>

<%! boolean loginStatus; %>
<%  loginStatus =(Boolean) request.getAttribute("status");%>

<%if(loginStatus){
	String userName = (String)request.getAttribute("userName");
%> <font color="black"><h2> Login Success </h2>
<h3> Welcome <%= userName %></h3> </font>
<%
}else{
%>
<font color="red"><h2> Invalid Credentials. <br>Login failed...</h2> </font>
<h4><a href="Home.jsp">Click Here</a> to login.</h4>
<h4><a href="Register.jsp">Click Here</a> to Register.</h4>
<%} %>

</body>
</html>