<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="style2.css">  
</head>
<body background="search.jsp">

    <nav id="navbar">
       <div id="logo">
         <img src="logo.png" >
       </div>
       
       <ul>
         <li class="item"><a href="Home.jsp">Home</a></li>
         <li class="item"><a href="AddTrain.jsp">Add Trains </a></li>
         <li class="item"><a href="DeleteTrain.jsp">Delete Trains</a></li>
        <li class="item"><a href="AddUser.jsp">Add User</a></li>
         <li class="item"><a href="DeleteUser.jsp">Delete User</a></li>
         <li class="item"><a href="Admin.jsp">Logout</a></li>      
       </ul>
    </nav>   


<div class = "header">
<form action="getTrain">
<div class = "form-box">
<h1> Find Train Here</h1>

<input type="text" class="search-field source" name="trainNo" placeholder="Train Number">
<submit class= "search-btn"><button>Find Train</button></submit>

</div>
</form>
</div>
</body>
</html>