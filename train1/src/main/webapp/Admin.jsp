<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Portal</title>
   <!-- <link rel="stylesheet" href="style2.css"> --> 
    <link rel="stylesheet" href="Style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    
</head>
<body >
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

<div class="container">
    <header>Admin ..!!</header>
    <form action ="adminAuthentication">
        <div class="input-field">
            <input type="text" name="userName" required>
            <label>User Name </label>
        </div>
        <div class="input-field">
            <input class="pswrd" type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 to 15 characters" required>
            <span class="show">SHOW</span>
            <label>Password</label>
        </div>
        <div class="button">
            <div class="inner"></div>
            <submit><button>LOGIN</button></submit>
        </div>
    </form>
   
<script>
    var input = document.querySelector('.pswrd');
    var show = document.querySelector('.show');
    show.addEventListener('click', active);
    function active(){
        if(input.type == "password"){
            input.type = "text";
            show.style.color = "blue";
            show.textContent = "HIDE";
        }else{
            input.type = "password";
            show.textContent = "SHOW";
            show.style.color = "black";
        }
    }
</script>
</body>
</html>
