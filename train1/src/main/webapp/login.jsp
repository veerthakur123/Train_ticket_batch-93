<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login form</title>
  <!-- <link rel="stylesheet" href="style2.css"> --> 
    <link rel="stylesheet" href="Style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        
</head>


<body >
<nav id="navbar">
       <div id="logo">
       <!-- <img src="logo.png" > -->  
       </div>
       
       <ul>
         <li class="item"><a href="Home.jsp">Home</a></li>
         <li class="item"><a href="login.jsp">Login </a></li>
         <li class="item"><a href="Admin.jsp">Admin</a></li>
         <li class="item"><a href="About.jsp">About Us</a></li>
       </ul>
    </nav>  

<div class="container">
    <header>Login Form</header>
       <form action="login" onsubmit="return book();" method="GET">
        <div class="input-field">
            <input type="text" id="username" name="userName"  title="Enter valid username..!!!" required>
            <label> Username</label>
        </div>
        <div class="input-field">
            <input class="pswrd" type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 to 15 characters" required>
            <span class="show">SHOW</span>
            <label>Password</label>
        </div>
        <div class="button" >
            <div class="inner"></div>
           <!--   <input type="submit" id="some" onclick="validateLogin()" value="LOGIN">-->
              <submit><button>LOGIN</button></submit>
        </div>
    </form>
    <div class="auth">
        Or login with
    </div>
    <div class="links">
        <div class="facebook">
            <i class="fab fa-facebook-square"><span><a href="https://www.facebook.com/">Facebook</a></span></i>
        </div>
        <div class="google">
            <i class="fab fa-google"><span><a href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin">Google</a></span></i>
        </div>
    </div>
    <form action="Register.jsp">
        <div class="signup">
            New account? <submit><button>Register Now!</button></submit>
        </div>
    </form>
</div>

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
  function book(){
	  var name=document.getElementById("username").value;
	 //alert("Welcome "+name+ " !!! Now You can book your Ticket");
	  localStorage.setItem('key',name);
	  return true;
	  
  }
</script>  
</body>
</html>