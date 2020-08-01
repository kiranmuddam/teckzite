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
function showloader_reg(){
    $("#btn-register").html("Sending...");
}

function hideloader_reg(){
    $("#btn-register").html("Register");
    }

function notify(msg,cat,time,modal)
{
ulak({"text":msg,"type":cat,"timeout":time,"modal":modal});
}


function sendchatmsg(eid)
{
var chatmsg=pick("chatmsg");    
if(chatmsg.length<1 || chatmsg==undefined)
{
alertify.error("Please Enter Something to Send.");
}
else
{
var datastring="chatmsg="+chatmsg+"&eid="+eid;
$.ajax({
type:"POST",
url:"chat-db.php",
data:datastring,
cache:false,
async:true,
beforeSend:function(){$("#nooo").html("<font color='blue'>Sending.....</font>");},
success:function(data){if(data.indexOf("sent")!=-1){$("#chatmsg").val('');updno();$("#nooo").html("<font color='yellow'>Sent</font>");setTimeout(function(){$("#nooo").html("<font color='white'>Chat with Organizer</font>");},5000);}else{alertify.error(data);}}
});     
}
}


function dofocus(field){$("#"+field).focus();}


function dolog()
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
success:function(data){hideloader();if(data.indexOf("success")!=-1){notify("Loggedin Successfully....Redirecting....","success","3500","true");setTimeout(function(){window.location="events";},2000);}else{notify(data,"error","2000","true");}}
}); 
}
}

function ValidateEmail(mail) 
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))
  {
    return (true)
  }
    return (false)
}

function doreg()
{
var reg_id=pick("reg_id");
var reg_name=pick("reg_name");
var reg_year=pick("reg_year");
var reg_branch=pick("reg_branch");
var reg_gender=pick("reg_gender");
var reg_mob=pick("reg_mob");
var reg_upass=pick("reg_upass");
var reg_cupass=pick("reg_cupass");
var reg_agree=$("input[name=terms]:checked").val();
var reg_payment=$("input[name=payment]:checked").val();

if(reg_id=="")
{
notify("Please Enter Valid University ID","error","2000","true");
dofocus("reg_id");
return false;
}
else if(reg_name=="" || isNaN(reg_name)==false || reg_name==undefined)
{
notify("Please Enter Your Name","error","2000","true");
dofocus("reg_name");
return false;
}
else if(reg_gender=="Select" || reg_gender==undefined)
{
notify("Please Choose Gender","error","2000","true");
dofocus("reg_gender");
return false;
}
else if(reg_year=="Select" || reg_year==undefined)
{
notify("Please Choose Year","error","2000","true");
dofocus("reg_year");
return false;
}
else if(reg_branch=="Select" || reg_branch==undefined)
{
notify("Please Choose Branch","error","2000","true");
dofocus("reg_branch");
return false;
}

else if(reg_upass=="" || reg_upass==undefined)
{
notify("Please Enter Password","error","2000","true");
dofocus("reg_upass");
return false;
}
else if(reg_cupass=="" || reg_cupass==undefined)
{
notify("Please Enter Confirm Password","error","2000","true");
dofocus("reg_cupass");
return false;
}
else if(reg_upass!=reg_cupass)
{
notify("Password and Confirm Passwords are not same","error","2000","true");
dofocus("reg_cupass");
return false;
}
else if(reg_agree=="" || reg_agree==undefined)
{
notify("Please Agree to the Terms and Conditions","error","2000","true");
return false;
}
else if(reg_payment=="" || reg_payment==undefined)
{
notify("Please Agree for Payment","error","2000","true");
return false;
}
else
{
//confirmation

if(confirm("Are you sure to Register?")){   
var datastring="reg_id="+reg_id+"&reg_name="+reg_name+"&reg_year="+reg_year+"&reg_branch="+reg_branch+"&reg_gender="+reg_gender+"&reg_mob="+reg_mob+"&reg_upass="+reg_upass+"&reg_agree="+reg_agree+"&reg_payment="+reg_payment;
$.ajax({
type:"POST",
url:"register-db.php",
data:datastring,
cache:false,
async:true,
beforeSend:function(){showloader_reg(".form-horizontal");},
success:function(data){hideloader_reg(".form-horizontal");if(data.indexOf("ID is")!=-1){notify(data,"success","3500","true");window.location="regdone.php?reg_id="+reg_id+"";}else{notify(data,"error","2000","true");}}
});
return false;
} else {
    return false;
}
                
 }
}


