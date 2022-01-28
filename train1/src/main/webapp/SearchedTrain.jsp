<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Available Trains</title>
    <style>
         table {
                border-collapse: collapse;
            }
            th {
                background-color:rgb(2, 2, 2);
                Color:white;
                filter: drop-shadow(0 0 0.75rem rgb(175, 241, 175));
            }
            th, td {
                width:150px;
                text-align:center;
                border:1px solid black;
                padding:5px
            }
            td{
             color:rgb(9, 240, 9);
                margin-top: -15%;
                filter: drop-shadow(0 0 0.75rem black);
                }
            .geeks {
                border-right:hidden;
            }
            .gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }
            h2 {
                color:rgb(241, 245, 241);
                filter: drop-shadow(0 0 0.75rem pink));
            }
            body {
            background:url(search.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            }
.testing{
bottom:10px;
right:15px;
filter: drop-shadow(0 0 0.75rem rgb(79, 245, 79));

}
        </style>
         <script type="text/javascript" src="ticket.js"></script>
</head>
 
<body>

<center>
<div>
     
    <h2>Search Result</h2>
    <table>
        <tr>
            <th>Train_No</th>
            <th>Train Name</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Ticket_Price</th>
        </tr>
    </table>
    <table class = "gfg">
<c:forEach items="${train}" var="train">
        <tr>
        
            <td class = "geeks">${train.trainNo}</td>
            <td>${train.trainName}</td>
            <td>${train.source}</td>
            <td>${train.destination}</td>
            <td>${train.ticketPrice}</td>
            
           
<script>
var addTrainData=(${train.trainNo},${train.trainName},${train.source},${train.destination});
 
console.log(addTrainData);
</script>
   
            
            
        </tr>
        
        </c:forEach>
    </table>

</center>
</div>
<br>
<br>
<pre></pre>
<form>
<center>
<div class="testing">
<a href="login.jsp" style="background-color:black; text-decoration:none; color:white; font-size:25px;">Login to Book Ticket</a>
</div>
<br>
</center>
</form>


</body>
</html>