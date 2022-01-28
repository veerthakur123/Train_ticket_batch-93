<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainreservation.com</title>
 <link rel="stylesheet" href="style2.css"> 
<body>
<style>
    #myVideo {
       position: fixed;
       top: 0;
       left: 0;
       right: 0;
       bottom: 0;
      
       width: 100%;
       height: 100%;
       object-fit: cover;
       z-index:-1;
       
        
     }
   </style>
     
    <script type="text/javascript">  
     
    var traindata=[
        {
            "TRAIN_NO":"1001",
            "TRAIN_NAME":"SHATABDI EXPRESS",
            "SOURCE":"BANGALORE",
            "DESTINATION":"DELHI",
            "TICKET_PRICE":"2500"
        },
        {
            "TRAIN_NO":"1002",
            "TRAIN_NAME":"SHATABDI EXPRESS",
            "SOURCE":"DELHI",
            "DESTINATION":"BANGALORE",
            "TICKET_PRICE":"2500"
        },
        {
            "TRAIN_NO":"1003",
            "TRAIN_NAME":"UDYAN EXPRESS",
            "SOURCE":"BANGALORE",
            "DESTINATION":"MUMBAI",
            "TICKET_PRICE":"1500"
        },
        {
            "TRAIN_NO":"1004",
            "TRAIN_NAME":"UDYAN EXPRESS",
            "SOURCE":"MUMBAI",
            "DESTINATION":"BANGALORE",
            "TICKET_PRICE":"1500"
        },
        {
            "TRAIN_NO":"1005",
            "TRAIN_NAME":"BRINDAVAN EXPRES",
            "SOURCE":"BANGALORE",
            "DESTINATION":"CHENNI",
            "TICKET_PRICE":"1000"
        },
        {
            "TRAIN_NO":"1006",
            "TRAIN_NAME":"BRINDAVAN EXPRES",
            "SOURCE":"CHENNI",
            "DESTINATION":"BANGALORE",
            "TICKET_PRICE":"1000"
        },
        
       
    ]
    
    function diaplayTable(){
        var num1;
        table="<table align=center><tr><th>TRAIN_NO</th><th>TRAIN_NAME</th><th>SOURCE</th><th>DESTINATION</th><th>TICKET_PRICE</th></tr>";
        for(var i=0;i<traindata.length;i++){
          table+="<tr><td>"+traindata[i].TRAIN_NO+"</td><td>"+traindata[i].TRAIN_NAME+"</td><td>"+traindata[i].SOURCE+"</td><td>"+traindata[i].DESTINATION+"</td><td>"+traindata[i].TICKET_PRICE+"</td></tr>";
    
        }
        table+="</table>"
        num1=true;
        document.getElementById("traindata").innerHTML=table;
      }
      
      </script>
      
</head>
   
<body>

    <nav id="navbar">
        <div id="logo">
          <img src="logo.png" >
        </div>
        
        <ul>
          <li class="item"><a href="Home.jsp">Home</a></li>
        
          <li class="item"><a href="Admin.jsp">Admin</a></li>
          <li class="item"><a href="About.jsp">About Us</a></li>
        <!-- <li class="item"><a href="index.html">Available Trains</a></li> -->   
        </ul>
     
     </nav>  
    <video autoplay muted loop id="myVideo">
        <source src="tv.mp4" type="video/mp4">
      </video>
 
    
    <h1 id="h3">Available Train</h1>
    <div class="form">
        
   <input type="submit" id="btn" onclick="diaplayTable()" value="Display Train"/>
  
   <br/><br/>
   <br><span id="traindata"></span></br>
   

   <div class = "header">
    <form action="getTrain">
    <center>
    <div class = "form-box"><h2> Find Train Here</h2>
    
    <input type="text" class="search-field source" id="trainNo" name="trainNo" placeholder="Enter Train Number">
     
     
    <div>
    <br>
    <submit class="button"><button style="width: 22%; height:30px; border-radius: 5px 5px 5px 5px;">Find Train</button></submit>
    </div>
   </center>
    </div>
    </form>
    
    </div>
     
    
    <script>
    var trainNo=document.getElementById("trainNo").value;
    window.localStorage.setItem('trainNo',trainNo);
    </script>

</body>
</html>