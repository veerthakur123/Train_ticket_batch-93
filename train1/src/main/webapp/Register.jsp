<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration form</title>
    <link rel="stylesheet" href="Style3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   
</head>
<body>

<div class="container">
    <header>Register Now!</header>
    <form action="registration" onsubmit=" return loginSuccess()">
        <div class="input-field">
            <input type="text" id="First" name="fName" pattern="[a-zA-Z]{3,10}" title="Must contain only letters with at least 3 to 10 characters" required >
            <label>First Name</label>
        </div>
        <div class="input-field">
            <input type="text"  id="Last" name="lName" pattern="[a-zA-Z]{3,10}" title="Must contain only letters with at least 3 to 10 characters" required>
            <label>Last Name</label>
        </div>
        <div class="input-field">
            <input type="text" id="mail" name="userName" required>
            <label>Username</label> 
        </div>
        <div class="input-field">
            <input class="pswrd" type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 to 15 characters" required>
            <span class="show">SHOW</span>
            <label>Password</label>
        </div>
        <div class="input-field">
            <input class="Cpswrd" type="password" id="confirmPassword" name="confirmPassword"  required onkeyup='check();'>
            
            <label>Confirm Password</label>
            <h5 id='message'></h5>
        </div>

        <div class="button" >
            <div class="inner"></div>
            <button>Create Account</button>
        </div>
    </form>
    <div class="login">
        Already have an account? <a href="login.jsp">login now</a>
    </div>
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

 
	function loginSuccess(){
		if(document.getElementById('First').value == document.getElementById('Last').value)
		    { alert("Firstname and lastname can't be same..!!!"); return false;}
		
		if(document.getElementById('password').value != document.getElementById('confirmPassword').value)
	      { alert("Passwords doesn't match...!!!"); return false;}
		
	   <!-- else   -->
           <!-- { alert("Registered  Successfully"); return true;} -->
	}
	var check = function() {
		
		
		  if (document.getElementById('password').value ==
		    document.getElementById('confirmPassword').value) {
		    document.getElementById('message').style.color = 'green';
		    document.getElementById('message').innerHTML = 'Matched';
		  } else {
		    document.getElementById('message').style.color = 'red';
		    document.getElementById('message').innerHTML = '**Not Matched**';
		  }
		}
</script>
</body>
</html>