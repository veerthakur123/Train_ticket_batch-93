var retail=document.getElementById("retail").value;
var gender=document.getElementById("gender").value;
var age=document.getElementById("age").value;
var name=document.getElementById("name").value;
var retail1=document.getElementById("retail1").value;
var gender1=document.getElementById("gender1").value;
var age1=document.getElementById("age1").value;
var name1=document.getElementById("name1").value;
var retail2=document.getElementById("retail2").value;
var gender2=document.getElementById("gender2").value;
var age2=document.getElementById("age2").value;
var name2=document.getElementById("name2").value;
var retail3=document.getElementById("retail3").value;
var gender3=document.getElementById("gender3").value;
var age3=document.getElementById("age3").value;
var name3=document.getElementById("name3").value;
function fun(){
    if(gender1=="Female"&&age1>18&&age1<60){
        document.getElementById("retail1").value=(retail1*3)/4;
    }
    else if((gender1=="Male" || gender1=="Female")&&age1>=60){
        document.getElementById("retail1").value=(retail1*3)/5;
    }
    else if((gender1=="Female"||gender1=="Male")&&age1<=12){
        document.getElementById("retail1").value=(retail1)/2;
    }
    if(gender2=="Female"&&age2>18&&age2<60){
        document.getElementById("retail2").value=(retail2*3)/4;
    }
    else if((gender2=="Male" || gender2=="Female")&&age2>=60){
        document.getElementById("retail2").value=(retail2*3)/5;
    }
    else if((gender2=="Female"||gender2=="Male")&&age2<=12){
        document.getElementById("retail2").value=(retail2)/2;
    }
    if(gender3=="Female"&&age3>18&&age3<60){
        document.getElementById("retail3").value=(retail3*3)/4;
    }
    else if((gender3=="Male" || gender3=="Female")&&age3>=60){
        document.getElementById("retail3").value=(retail3*3)/5;
    }
    else if((gender3=="Female"||gender3=="Male")&&age3<=12){
        document.getElementById("retail3").value=(retail3)/2;
    }
}