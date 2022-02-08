<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Train</title>
<link rel="stylesheet" href="Style3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="style2.css">  
</head>
<body background="search.jpg">

    <nav id="navbar">
       <div id="logo">
         <img src="logo.png" >
       </div>
       
       <ul>
         <li class="item"><a href="Home.jsp">Home</a></li>
         <li class="item"><a href="DeleteTrain.jsp">Delete Trains</a></li>
         <li class="item"><a href="AddUser.jsp">Add User</a></li>
         <li class="item"><a href="DeleteUser.jsp">Delete User</a></li>
 <li class="item"><a href="AdminDashboard.jsp">Dashboard</a></li>
         <li class="item"><a href="Admin.jsp">Logout</a></li>      
       </ul>
    </nav>  
 
<div class="container">
    <header>Add Train</header>
    <form action="addTrain">
        <div class="input-field">
            <input type="number" id="First" name="trainNo" required >
            <label>Train Number</label>
        </div>
        <div class="input-field">
            <input type="text"  id="Last" name="trainName" required>
            <label>Train Name</label>
        </div>
        <div class="input-field">
            <input type="text" id="mail" name="source" required>
            <label>Source</label> 
        </div>
        <div class="input-field">
            <input class="pswrd" type="text" id="password" name="destination" required>
           
            <label>Destination</label>
        </div>
        <div class="input-field">
            <input class="Cpswrd" type="number" id="confirmPassword" name="ticketPrice"  required>
            
            <label>Ticket Price</label>
        </div>

        <div class="button" >
            <div class="inner"></div>
            <button>Add</button>
        </div>
    </form>
</div>

</body>
</html>