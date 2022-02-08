<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <link rel="stylesheet" href="Style4.css">
    <!--BOOTSTRAP LINK-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body background="search.jpg" style="background-size:cover;background-repeat:no-repeat;">
    <form onsubmit="event.preventDefault(); onFormSubmit();" autocomplete="off" >
	

        <div class="signup-form" >
	

            <div class="Signup-head" >
                <h1>Book Ticket</h1>
            </div>

            
            <div class="signup-content2" style="height:500px;">
               <!--   <input type="text" placeholder="Source" class="input text-white bg-dark" required>
                <input type="text" placeholder="Destination" class="input text-white bg-dark" required><br>-->
            

            <label class="text-white" style="margin-left:10px;" >Travel Date</label>
            <input type="date" class="tarikh bg-dark " name="date" id="date" required>
            

             <input type="text" placeholder="Name" name="name" id="name" class="input text-white bg-dark" required></input>
             <input type="number" min=1 max="120" placeholder="age" id="age" class="input text-white bg-dark" required><br>
		
		<label class="text-white travel">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <select class="bg-dark text-white travel2" name="gender" id="gender" required>
                <option></option>
                <option value="M">Male</option>
                <option value="F">Female</option>
               
            </select><br>
	
	    <label class="text-white travel">Travel Class</label>
            <select class="bg-dark text-white travel2" name="travelClass" id="travelClass" required>
                <option></option>
                <option>First Class/1A</option>
                <option>AC 2tier/2A</option>
                <option>AC 3tier/3A</option>
                <option>Executive class chair car/Economy Class</option>
                <option>AC Chair Car</option>
                <option>Sleeper Class</option>
                <option>Second Class</option>
                <option>General</option>
            </select>
           <pre> </pre>
            <input type="submit"  value="Add Passenger"  onclick="addPassengerData(name,age,gender,fair)"style="background-color:skyblue;"class="submit-btn ">
            <!--<input type="submit" value="Confirm" class="submit-btn ">-->
        </div>
        </div>
    </form>
<pre></pre>
       
    <table border=1 class="mytable" id="passengerList" style="background-color:white;">
		 <h2>Passengers Details</h2>
		<thead>
		     <tr class="header">
		          <th>  Passenger Name  </th>
			
		          <th >  Age  </th>
			
		          <th>  Gender  </th>
		          <th>  Date  </th>
		          <th>  Ticket Price  </th>
		          <th>  Travel Class  </th> 
		          <th>  Edit & Delete  </th>
		     </tr>
		   </thead> 
		   <tbody id="tableBody">
		     
		   </tbody>   
	</table>
	
	 <button type="btn btn-primary" id='download'>Download</button>

<div class="signup-form">
<script>
	//var selectedRow=null;

const Passengerp = [];

 var travelDate;

	function onFormSubmit(){
		
	var Data=readFormData();
		insertNewRecord(Data);
		resetForm();
	}
	function readFormData(){
		var formData={};
		
formData["name"]=document.getElementById("name").value;

		formData["age"]=document.getElementById("age").value;
		formData["gender"]=document.getElementById("gender").value;
		formData["date"]=document.getElementById("date").value;
		//formData["ticketPrice"]=document.getElementById("ticketPrice").value;
		formData["travelClass"]=document.getElementById("travelClass").value;
		return formData;
	}
	function insertNewRecord(data){
		const passenger={};



		var table=document.getElementById("passengerList").getElementsByTagName('tbody')[0];
		var ticketPrice=2500;
		console.log(data);
		var newRow=table.insertRow(table.length);
		cell1=newRow.insertCell(0);
	    cell1.innerHTML=data.name;
		passenger["name"]=data.name;

		cell2=newRow.insertCell(1);
		cell2.innerHTML=data.age;
		passenger["age"]=data.age;

		cell3=newRow.insertCell(2);
		cell3.innerHTML=data.gender;
		passenger["gender"]=data.gender;

		console.log(data.name);
		console.log(data.gender);
		cell4=newRow.insertCell(3);
		cell4.innerHTML=data.date;
		
		travelDate = data.date;
		cell5=newRow.insertCell(4);
		cell5.innerHTML=calculateTotalPrice(data.gender,data.age,ticketPrice);
		cell6=newRow.insertCell(5);
		cell6.innerHTML=data.travelClass;
		cell7=newRow.insertCell(6);
		cell7.innerHTML=`<button class="edit-btn" onclick="onEdit(this)">Edit</button>
		                 <button class="delete-btn" onclick="onDelete(this)">Delete</button>`;
	Passengerp.push(passenger);


    function calculateTotalPrice(gender,age,ticketPrice){
    	if(age<=12)
    		 return(ticketPrice * 0.5);
    	if(age>=60)
    		return(ticketPrice * 0.6);
    	if(gender=="Female" && age<=60 && age>=12)
    		return(ticketPrice * 0.75);
    	
    	return ticketPrice;

    } 	
    }
	function resetForm(){
		document.getElementById("name").value="";
		document.getElementById("age").value="";
		document.getElementById("gender").value="";
		document.getElementById("date").value="";
		document.getElementById("trainNo").value="";
		document.getElementById("travelClass").value="";
		
	}
	function onEdit(td){
		selectedRow=td.parentElement.parentElement;
		document.getElementById("name").value=selectedRow.cells[0].innerHTML;
		document.getElementById("age").value=selectedRow.cells[1].innerHTML;
		document.getElementById("gender").value=selectedRow.cells[2].innerHTML;
		document.getElementById("date").value=selectedRow.cells[3].innerHTML;
		/*document.getElementById("Ti").value=selectedRow.cells[4].innerhtml;*/
		document.getElementById("travelClass").value=selectedRow.cells[5].innerHTML;
		Delete(td);
	}
	function onDelete(td){
		if(confirm('Are you sure you want to delete this record ?')){
			row=td.parentElement.parentElement;
			document.getElementById("passengerList").deleteRow(row.rowIndex);	
		}
	}
	function Delete(td){
		
		row=td.parentElement.parentElement;
		document.getElementById("passengerList").deleteRow(row.rowIndex);	
			
   }

function PassPassengerData(){
	var url = "http://localhost:8080/addPassenger"
	fetch(url, {
	method:'POST',
	headers:{
	"Content-Type": "application/json",
	'dataType': 'json'

	},
	body:JSON.stringify(Passengerp)


	})
	.then((response) => response.json())
	.then((data) => console.log(data))
	
	var prl = "http://localhost:8080/trainNo"
	var trainnum = window.localStorage.getItem("trainNo");
	fetch(prl, {
	method:'POST',
	headers:{
	"Content-Type": "application/json",
	'dataType': 'json'

	},
	body:JSON.stringify(trainnum)


	})
	.then((response) => response.json())
	.then((data) => console.log(data))
	

	let trl = "http://localhost:8080/travelDate"

	fetch(trl, {
	method:'POST',
	headers:{
	"Content-Type": "application/json",
	'dataType': 'json'

	},
	body:JSON.stringify({"travelDate":travelDate})

	})
	.then((response) => response.json())
	.then((data) =>console.log(data))


}


function success(){
alert("Your Ticket has been Booked....Thank you!!");
window.location.href="http://localhost:8080/";   //replace with new book ticket


}



</script>
</div>
<pre></pre>
<center>
<!-- Button trigger modal -->
<button type="button" style="background-color:skyblue; color:black;" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="PassPassengerData()">
  Make Payment
</button>
</center>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Make Payment</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

<div class="justify-content-center">
    		<h2>Payment Form</h2>
        <form action="" method="post">
            <!--Account Information Start-->
            <h4>Account</h4>
            <div class="input_group">
                <div class="input_box">
                    <input type="Text" placeholder="Name on Card" required class="name">
                    <i class="fa fa-user icon"></i>
                </div>
            </div>
            <div class="input_group">
                <div class="input_box">
                    <input type="email" placeholder="Email Address" required class="name">
                    <i class="fa fa-envelope icon"></i>
                </div>
            </div>
            <div class="input_group">
                
            </div>
            <!--Account Information End-->



            <!--Payment Details Start-->
            <div class="input_group">
                <div class="input_box">
                    <h4>Payment Details</h4>
                    <input type="radio" name="pay" class="radio" id="bc1" checked>
                    <label for="bc1"><span>
                            <i class="fa fa-cc-visa"></i>Credit Card</span></label>
                    <input type="radio" name="pay" class="radio" id="bc2">
                    <label for="bc2"><span>
                            <i class="fa fa-cc-paypal"></i>Paypal</span></label>
                </div>
            </div>
            <div class="input_group">
                <div class="input_box">
                    <input type="tel" name="" class="name" placeholder="Card Number 1111-2222-3333-4444" required>
                    <i class="fa fa-credit-card icon"></i>
                </div>
            </div>
            <div class="input_group">
                <div class="input_box">
                    <input type="tel" name="" class="name" placeholder="Enter CVV" required>
                    <i class="fa fa-user icon"></i>
                </div>
            </div>
            <div class="input_group">
                <div class="input_box">
                    <div class="input_box">
                        <input type="number" placeholder="Exp Month" required class="name">
                        <i class="fa fa-calendar icon" aria-hidden="true"></i>
                    </div>
                </div>
                <div class="input_box">
                    <input type="number" placeholder="Exp Year" required class="name">
                    <i class="fa fa-calendar-o icon" aria-hidden="true"></i>
                </div>
            </div>
            <div class="input_box">
                <input type="number" placeholder="Enter Amount" required class="name">
                <i class="fa fa-money icon" aria-hidden="true"></i>
            </div>
            <!--Payment Details End-->

            <div class="input_group">
                <div class="input_box">
                    <button type="submit" id="paymentId" onclick="success();">PAY NOW</button>
                </div>
            </div>

        </form>
  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
   <script>
   window.onload=function(){
	   
	   document.getElementById('download').addEventListener('click',()=>{
		   const table = this.document.getElementById('passengerList');
		   console.log(table)
		  var example = html2pdf().from(table,"element") 
		  console.log(example)
		  example.save()
		   
	   })
   }
</script>  
<!-- <script>
document.getElementById('download').addEventListener('click', function() {
	  var doc = new jsPDF()
	  doc.passengerList(10, 10, doc.splitTextToSize(text.value, 180));
	  doc.save('doc.pdf');
	})

</script> -->
</html>