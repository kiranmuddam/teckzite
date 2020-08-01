function updatecount(cou){
    $.ajax({
        url : "updatecount.php",
        type: "POST",
        data:"cou="+cou,
        success:function(data){},
        cache:false
    });
}

function pick(field)
{
var prathap=document.getElementById(field).value;
return prathap; 
}

function showloader(){
    $("#btn-login").html("Sending...");
}

function hideloader(){
    $("#btn-login").html("Login");
    } 

function notify(msg,cat,time,modal)
{
ulak({"text":msg,"type":cat,"timeout":time,"modal":modal});
}


function dofocus(field){$("#"+field).focus();}


function login()
{
var stuid=pick("stuid");
var passwd=pick("passwd");

if(stuid==undefined || stuid=="")
{
notify("Please Enter University ID","error","2000","true");
dofocus("stuid");
return false;
}
else if(passwd==undefined || passwd=="")
{
notify("Please Enter Password","error","2000","true");
dofocus("passwd");
return false;
}
else
{
var datastring="stuid="+stuid+"&passwd="+passwd;
$.ajax({
type:"POST",
url:"login-db.php",
data:datastring,
cache:false,
async:true,
beforeSend:function(){showloader();},
success:function(data){hideloader();if(data.indexOf("success")!=-1){notify("Loggedin Successfully....Redirecting....","success","3500","true");setTimeout(function(){window.location="index.php";},2000);}else{notify(data,"error","2000","true");}}
}); 
}
}

