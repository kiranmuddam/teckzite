<?php
session_start();
require_once("site-settings.php");

//checking whether loggedin or not
$isloggedin=false;
$stuid="";
if(isloggedin())
{
$stuid=trim($_SESSION['stuid']);
$isloggedin=true;

if(isset($_POST['message']) && !empty($_POST['message']))
{
//function for sanitizing variable values
function prathap($field)
{
$prathap=trim($_POST[$field]);	
$prathap=strip_tags($prathap);	
$prathap=htmlspecialchars($prathap);	
$prathap=mysql_real_escape_string($prathap);	
return $prathap;
}

$message=prathap("message");
if($message!="")
{
mysql_query("INSERT INTO contact_messages(stuid,msg,ip) VALUES('$stuid','$message','$ip')");
echo "success";
}
else
{
echo "Message cannot be empty";	
}
}
}
else
{
echo "Please Login";	
}

?>
