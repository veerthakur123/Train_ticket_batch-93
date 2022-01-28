
var ticketData="";
function addTrainData(tNo,tName,source,destination){
	ticketData+="trainNo : "+tNo+"<br>";
	ticketData+="trainName: "+tName+"<br>";
	ticketData+="trainSource : "+source+"<br>";
	ticketData+="trainDestination : "+destination+"<br>";
	
	console.log(ticketData);
}
function addPnrData(PNR){
	ticketData+="PNR : "+PNR+"<br>";
}

function BookTicketData(){
	document.getElementbyId("bookticket").Innerhtml=TicketData;
}


function addPassengerData(pname,page,pgender,pprice){
	ticketData+="Name : "+pname;
	ticketData+="age: "+page ;
	ticketData+="gender : "+pgender;
	ticketData+="price : "+pprice+"<br>";
}


function addTotalFair(totalfair){
	ticketData+="totalfair : "+totalfair+"<br>";
}






//function add() {
//    var arr = document.getElementsByName('qty');
//    var tot=0;
//    
//    for(var i=0;i<arr.length;i++){
//    	
//        if(parseInt(arr[i].value))
//            tot += parseInt(arr[i].value);
//    }
//    document.getElementById('retail4').value = tot;
//    var a=document.getElementById("mydate").value;
//    document.getElementById("date").innerHTML=a;
//    var b=document.getElementById("retail4").value;
//    document.getElementById("retail5").innerHTML=b;
//    var c=document.getElementById("source").innerText;
//    var d=document.getElementById("destination").innerText;
//    var e=document.getElementById("mydate").value;
//    document.getElementById("sd").innerHTML=c.charAt(0)+d.charAt(0)+"_"+e.charAt(0)+e.charAt(1)+e.charAt(2)+e.charAt(3)+e.charAt(5)+e.charAt(6)+e.charAt(8)+e.charAt(9)+"_"+"20";
//
//
//}
//var doc = new jsPDF();
//var specialElementHandlers = {
//    '#editor': function (element, renderer) {
//        return true;
//    }
//};
//$('#generatePDF').click(function () {
//    doc.fromHTML($('#htmlContent').html(), 15, 15, {
//        'width': 700,
//        'elementHandlers': specialElementHandlers
//    });
//    doc.save('trainTicket.pdf');
//});