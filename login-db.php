<?php
session_start();
require_once("site-settings.php");


//checking whether loggedin or not
$isloggedin=false;
$stuid="";
if(isset($_SESSION['stuid']) && !empty($_SESSION['stuid']) && isset($_SESSION['web']) && !empty($_SESSION['web']))
{
$stuid=trim($_SESSION['stuid']);
$isloggedin=true;
}
//checking whether loggedin or not
$isreg=mysql_fetch_array(mysql_query("SELECT * FROM site_settings WHERE function='Site Logins'"));
$isregopen=$isreg['value'];
if($isregopen=="on")
{
if(isset($_POST['stuid']) && !empty($_POST['stuid']) && isset($_POST['passwd']) && !empty($_POST['passwd']))
{

//variables
$stuid=mysql_real_escape_string($_POST['stuid']);
$stuid=strtoupper($stuid);
$passwd=mysql_real_escape_string($_POST['passwd']);

$data=mysql_query("SELECT * FROM users WHERE stuid='$stuid' || tzid='$stuid'");
if(mysql_num_rows($data)>=1)
{

if($passwd=="")
{
echo "<script>alert('Please Enter Password')</script>";	
}
else
{
$passwd=md5($passwd);


//checking whether already registered	
if(mysql_num_rows(mysql_query("SELECT * FROM users WHERE (stuid='$stuid' ||  tzid='$stuid') && passwd='$passwd'"))>=1)
{

mysql_query("UPDATE users SET logins=logins+1,lastip='$ip',lasttime=NOW() WHERE stuid='$stuid' || tzid='$stuid'");
$star=substr($stuid,0,3);
if($star=="TZL"){$rr=mysql_fetch_array(mysql_query("SELECT stuid FROM users WHERE tzid='$stuid'"));$stuid=$rr['stuid'];}
$_SESSION['stuid']=$stuid;
$_SESSION['web']=$sessionweb;
echo "<script>alert('success')</script>";	
}	
else
{
	
echo "<script>alert('Invalid Login')</script>";	
	}

		
	

}
}
else
{
echo "<script>alert('You are not Registered')</script>";
}
}
else
{
	//blocking User ips
	mysql_query("INSERT INTO blockedips(user,ip,reason) VALUES('$stuid','$ip','Login Page Values Passing')");
	echo'<script>alert("blocked")</script>';
}
}
else
{
echo "<script>alert('Logins are Disabled')</script>";	
}
?>

