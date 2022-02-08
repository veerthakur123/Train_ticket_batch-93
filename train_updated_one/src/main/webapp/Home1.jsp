<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainreservation.com</title>
<link rel="stylesheet" href="style2.css">  
</head>
<body background="RegistrationPic.jpeg">

    <nav id="navbar">
       <div id="logo">
         <img src="logo.png" >
       </div>
       
       <ul>
         <li class="item"><a href="Home.jsp">Home</a></li>
         <li class="item"><a href="login.jsp">Login </a></li>
         <li class="item"><a href="Admin.jsp">Admin</a></li>
         <li class="item"><a href="About.jsp">About Us</a></li>
       </ul>
	
    </nav>   
<center>
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
</center>
<div class = "header">
<form action="getTrain">
<div class = "form-box">
<h1> Find Train Here</h1>

<input type="text" class="search-field source" name="trainNo" placeholder="Train Number">
<submit class= "search-btn"><button>Find Train</button></submit>

<!-- <button class= "search-btn" type="button">Find Train</button> -->
</div>
</form>
</div>
  <pre> </pre>
<center>
<form action="getAllTrains>
         <submit class= "search-btn"><button>View All Trains</button></submit>
</form>
</center>
    
</body>
</html>