<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
  background-color:grey;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color:skyblue;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
</head>

<body background="search.jpg"  style="background-size:cover;background-repeat:no-repeat;">

<h2 style="text-align:center">Welcome &nbsp;</h2></h2><span><h2 style="text-align:center" id="head2"></h2></span></h2>
<form action="BookTicket.jsp">
<div class="card">
  <img src="ProfileImg.png" alt="user-pic" style="width:100%">
  <div id="head1" style="background-color:grey; color:black;"></div>
  <p class="title" style="background-color:grey; color:black;">Book your Ticket here</p>
  
  <div style="margin: 24px 0; background-color:grey; color:black;">
    <a href="https://dribbble.com/session/new"><i class="fa fa-dribbble"></i></a> 
    <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>  
    <a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a>  
    <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><submit><button>Book Ticket</button></submit></p>
</div>
</form>
<script>
//var myData = localStorage['key'];
var name= localStorage.getItem('key');
document.getElementById("head2").innerHTML=name;
document.getElementById("head1").innerHTML="Hii  " + localStorage.getItem('key');
//localStorage.removeItem('key');
</script>
</body>
</html>
