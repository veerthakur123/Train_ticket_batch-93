<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
xmlns:th="http://www.thymeLeaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>Available Trains</title>
    <style>
         table {
                border-collapse: collapse;
            }
            th {
                background-color:rgb(2, 2, 2);
                Color:white;
            }
            th, td {
                width:150px;
                text-align:center;
                border:1px solid black;
                padding:5px
            }
            .geeks {
                border-right:hidden;
            }
            .gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }
            h1 {
                color:rgb(241, 245, 241);
            }
            body {
            background:url(searchTrain.png);
            background-repeat: no-repeat;
            background-size: cover;
            }
        </style>
</head>
<body>
<center>
    <h1>Indian Railways</h1>
    <h2>All Trains</h2>
     <table class = "gfg">
        <tr>
            <th>Train No</th>
            <th>Train Name</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Ticket Price</th>
        </tr>
       <tr th:each="train : ${allTrains}"> 
		<td th:text="${train.trainNo}"></td>
                <td th:text="${train.trainName}"></td> 
                <td th:text="${train.source}"></td> 
           	<td th:text="${train.destination}"></td>
           	<td th:text="${train.ticketPrice}"></td> 
        </tr> 
</table>
</center>

</body>
</html>