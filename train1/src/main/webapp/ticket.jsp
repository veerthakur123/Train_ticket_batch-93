<!DOCTYPE html>
<html>
<head>
    <title>Ticket Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="index.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
    <style>
        .header {
            overflow: hidden;
            background-color: #f1f1f1;
            padding: 20px 10px;
        }

        .header a {
            float: left;
            color: black;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 18px;
            line-height: 25px;
            border-radius: 4px;
        }
        .header input{
            float: left;
            color: black;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 18px;
            line-height: 25px;
            border-radius: 4px;
        }

        .header a.logo {
            font-size: 25px;
            font-weight: bold;
        }

        .header input:hover {
            background-color: #ddd;
            color: black;
        }

        .header input.active {
            background-color: dodgerblue;
            color: white;
        }

        .header-right {
            float: right;
        }
        body{
            background: #FAFAD2;
        }
        input{
            padding: 10px 10px;
            border-radius: 3px;
        }
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 50%;
            margin: 0px auto;
        }
        #htmlContent{
            text-align: center;
        }
        td, th, button {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        button {
            border: 1px solid black;
        }
        tr:nth-child(even) {
            background-color: #dddddd;
        }
        .ticket {
            position: relative;
            box-sizing: border-box;
            width: 300px;
            height: 450px;
            margin: 150px auto 0;
            padding: 20px;
            border-radius: 10px;
            background: #FBFBFB;
            box-shadow: 2px 2px 15px 0px #AB9B0D;
        }
        .ticket__content {
            box-sizing: border-box;
            height: 100%;
            width: 100%;
            border: 6px solid #D8D8D8;
        }
    </style>
</head>

<body>
<form action="login.jsp">
    <div class="header">
        <a href="#default" class="logo">Indian Railways</a>
        <div class="header-right">
            <input class="active" type="submit" value="Logout">
        </div>
    </div>
</form>
<center>
    <b><h1>Welcome</h1>
        <h1 style="text-align: center">Download Ticket Below</h1></b><br><br>
        <input type="text" id="name" value="jeswanth" readonly>
        <input type="number" id="age" value="21" readonly>
        <input type="text" id="gender" value="Male" readonly>
        <input type="text" name="qty" id="retail" value="${train.ticketPrize}" readonly><br><br>
<%--        <button type="submit" class="btn btn-info" onclick="fun()">Calculate passenger fair</button><br><br><br>--%>
        <input type="text" id="name1" value="bharath" readonly>
        <input type="number" id="age1" value="11" readonly>
        <input type="text" id="gender1" value="Male" readonly>
        <input type="text" id="retail1" name="qty" value="${train.ticketPrize}" readonly><br><br>
<%--        <button type="submit" class="btn btn-info" onclick="fun()">Calculate passenger fair</button><br><br><br>--%>
        <input type="text" id="name2" value="krishna" readonly>
        <input type="number" id="age2" value="65" readonly>
        <input type="text" id="gender2" value="Male" readonly>
        <input type="text" id="retail2" name="qty" value="${train.ticketPrize}" readonly><br><br>
<%--        <button type="submit" class="btn btn-info" onclick="fun()">Calculate passenger fair</button><br><br><br>--%>
        <input type="text" id="name3" value="anjana" readonly>
        <input type="number" id="age3" value="30" readonly>
        <input type="text" id="gender3" value="Female" readonly>
        <input type="text" id="retail3" name="qty" value="${train.ticketPrize}" readonly><br><br>
        <h3>Total Ticket Price: </h3><input type="number" id="retail4" readonly><br><br>
        <h3>Select the travel date: </h3><input type="date" required placeholder="Select the date travel" id="mydate" min="2021-11-09"><br>
        <button type="submit" class="btn btn-info" onclick="fun();add();">Calculate passenger fair</button>
</center>
<script src="passenger.js">
</script>
</body>
<body>
<div id="htmlContent">
    <div class="ticket">
        <div class="ticket__content">
            <h5><b>Train Number:</b> ${train.trainId}</h5><br>
            <h5><b>Train Name:</b> ${train.trainName}</h5><br>
            <h5><b>Source Point:</b> <p id="source">${train.sourcePoint}</p></h5>
            <h5><b>Destination point:</b><p id="destination">${train.destinationPoint}</p></h5>
            <h5><b>PNR No:</b><p id="sd"></p></h5>
            <h5><b>Travel Date:</b><p id="date"></p></h5>
            <h5><b>Total Price:</b><p id="retail5"></p> </h5>
        </div>
    </div>
</div><br><br>
<div id="editor"></div>
<center>
    <p>
        <button id="generatePDF" class="btn btn-info">Download Ticket</button>
    </p>
</center>
<script src="ticket.js">
</script>
</body>
</html>