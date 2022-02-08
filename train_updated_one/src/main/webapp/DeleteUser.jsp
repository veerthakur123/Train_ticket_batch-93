<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
 <link rel="stylesheet" href="Style3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

<link rel="stylesheet" href="style2.css">  
</head>
<body background="RegistrationPic.jpeg">

    <nav id="navbar">
       <div id="logo">
         <img src="logo.png" >
       </div>
       
       <ul>
         <li class="item"><a href="Home.jsp">Home</a></li>

         <li class="item"><a href="AddTrain.jsp">Add Train</a></li>
         <li class="item"><a href="DeleteTrain.jsp">Delete Trains</a></li>
         <li class="item"><a href="AddUser.jsp">Add User</a></li>
          <li class="item"><a href="AdminDashboard.jsp">Dashboard</a></li>
<li class="item"><a href="Admin.jsp">Logout</a></li>      
       </ul>
    </nav>   

<div class="container">
    <header>Delete User</header>
    <form action="deleteUser">
        <div class="input-field">
            <input type="number" id="First" name="userid" required >
            <label> Enter UserId</label>
        </div>
        <div class="button" >
            <div class="inner"></div>
            <button>Delete</button>
        </div>
    </form>
</div>



</body>
</html>