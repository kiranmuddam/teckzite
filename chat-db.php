<?php
session_start();
require_once("site-settings.php");


//reading blocked ips
$isblocked=mysql_num_rows(mysql_query("SELECT * FROM `blockedips` WHERE ip='$ip'"));
if($isblocked>0){echo "Your Ip has been blocked";}

//checking whether loggedin or not
$isloggedin=false;
$stuid="";
if(isset($_SESSION['stuid']) && !empty($_SESSION['stuid']) && isset($_SESSION['web']) && !empty($_SESSION['web']))
{
$stuid=trim($_SESSION['stuid']);
$isloggedin=true;
if(isset($_POST['chatmsg']) && isset($_POST['eid']))
{
$chatmsg=strip_tags(trim(mysql_real_escape_string($_POST['chatmsg'])));
$eid=strip_tags(trim(mysql_real_escape_string($_POST['eid'])));
$isreg=mysql_fetch_array(mysql_query("SELECT * FROM site_settings WHERE function='Participant - Organizer Chating'"));
$isregopen=$isreg['value'];
if($isregopen=="on")
{
if(mysql_num_rows(mysql_query("SELECT * FROM events WHERE eid='$eid'"))>=1)
{
if(strlen($chatmsg)>1){
	mysql_query("INSERT INTO partoorgmsg(eid,sender,receiver,subject,ip) VALUES('$eid','$stuid','Event Organizer','$chatmsg','$ip')");
	echo "sent";
	}
	else
	{
	echo "Please type Message";	
	}
}
else
{
mysql_query("INSERT INTO blockedips(user,ip,reason) VALUES('$stuid','$ip','Chating-Invalid Event Passed')");
echo "Invalid Event";	
}
}
else
{
echo "<br><br><center><p style='color:red'>Chating Option has been disabled</p></center>";	
}
}
}
else
{
echo "<br><br><center><p style='color:red;'>Please Login</p></center>";	
}

?>

