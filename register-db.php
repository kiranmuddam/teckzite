<?php
session_start();
require_once("site-settings.php");

//checking whether loggedin or not
$isloggedin=false;
$stuid="";
if(isset($_SESSION['stuid']) && !empty($_SESSION['stuid']) && isset($_SESSION['web']) && !empty($_SESSION['web']))
{
echo "Already loggedin";
exit;
$stuid=trim($_SESSION['stuid']);
$isloggedin=true;
}
//checking whether loggedin or not
$isreg=mysql_fetch_array(mysql_query("SELECT * FROM site_settings WHERE function='Site Registrations'"));
$isregopen=$isreg['value'];
if($isregopen=="on")
{
if(isset($_POST['reg_id']) && !empty($_POST['reg_id']) &&  isset($_POST['reg_name']) && !empty($_POST['reg_name']) && isset($_POST['reg_year']) && !empty($_POST['reg_year']) && isset($_POST['reg_branch']) && !empty($_POST['reg_branch']) && isset($_POST['reg_gender']) && !empty($_POST['reg_gender'])  && isset($_POST['reg_mob']) && !empty($_POST['reg_mob']) && isset($_POST['reg_upass']) && !empty($_POST['reg_upass'])
    && isset($_POST['reg_agree']) && !empty($_POST['reg_agree']) && isset($_POST['reg_payment']) && !empty($_POST['reg_payment']))
{
$unid=$_POST['reg_id'];
if(mysql_num_rows(mysql_query("SELECT * FROM data WHERE stuid='$unid'"))>=1){
    $datacheck=(mysql_fetch_array(mysql_query("SELECT *FROM data WHERE stuid='$unid'")));
    $reg_name = $datacheck['stuname'];
    $reg_id= $datacheck['stuid'];
    $reg_email=$datacheck['email'];

$reg_year=$datacheck['year'];
$reg_branch=$datacheck['branch'];
$reg_gender=$datacheck['gender'];
function prathap($field)
{
$prathap=trim($_POST[$field]);	
$prathap=strip_tags($prathap);	
$prathap=htmlspecialchars($prathap);	
$prathap=mysql_real_escape_string($prathap);	
return $prathap;
}

//variables

$reg_mob=prathap("reg_mob");
$reg_upass=prathap("reg_upass");
$reg_agree=prathap("reg_agree");
$reg_payment=prathap("reg_payment");
if(1==1)
{
if($reg_id=="")
{
echo "Please Enter Valid University ID";	
}
elseif($reg_name=="" || !preg_match("/^[a-zA-Z ]*$/",$reg_name))
{
echo "Please Enter Name";	
}
elseif($reg_year=="Select" || mysql_num_rows(mysql_query("SELECT * FROM year_categories WHERE year='$reg_year'"))<1)
{
echo "Please Choose Valid Year";	
}
elseif($reg_branch=="Select")
{
echo "Please Choose Valid Branch";	
}
elseif($reg_gender=="Select")
{
echo "Please Choose Valid Gender";	
}
elseif($reg_upass=="" || strlen($reg_upass)<2)
{
echo "Please Enter Valid Password. Minimum 2 characters";	
}
elseif($reg_agree=="")
{
echo "Please Agree to the Terms and Conditions";	
}
elseif($reg_payment=="")
{
echo "Please Agree to Payments";	
}
else
{
//checking whether already registered	
if(mysql_num_rows(mysql_query("SELECT * FROM users WHERE email='$reg_email'"))>=1)
{
echo "Already Registered";	
exit;
}	
else
{
	$passwd=md5($reg_upass);
    $lastzid = mysql_query("select * from `users` ORDER BY sno DESC LIMIT 1 ");
	if(mysql_num_rows($lastzid)<1)
	{
		$curtzid="TZL0001";
	}
	else{
		    $det=mysql_fetch_array($lastzid);
			$tzzid=$det['tzid'];
			//getting last four numbers
		$tz1=substr($tzzid, 0, 6);
		$tz2=substr($tzzid, 0, 5);
		$tz3=substr($tzzid, 0, 4);
		$tz4=substr($tzzid, 0, 3);
		$tzzid=substr($tzzid, 3, 6);
		if($tz1=='TZL000')
		{
			$curtzid=$tzzid+1;
			if($curtzid=='10')
			{
				$curtzid="TZL00".$curtzid;
			}
			else
			{
			$curtzid="TZL000".$curtzid;
			}
			
		}
		else if($tz2=='TZL00')
		{
			$curtzid=$tzzid+1;
			if($curtzid=='100')
			{
				$curtzid="TZL0".$curtzid;
			}
			else
			{
			$curtzid="TZL00".$curtzid;
			}
		}
		else if($tz3=='TZL0')
		{
			$curtzid=$tzzid+1;
			if($curtzid=='1000')
			{
				$curtzid="TZL".$curtzid;
			}
			else
			{
			$curtzid="TZL0".$curtzid;
			}
		}
		else
		{
			$curtzid=$tzzid+1;
			$curtzid="TZL".$curtzid;
		}
		}
	}
	if($curtzid==""){$curtzid="TZL0001";}
		//assigning new id
	 	$stuid=$curtzid;
		 if(mysql_query("INSERT INTO `users`(stuid,tzid,email,stuname,passwd,gender,year,branch,phone,clg_name,lastip,accomodation,fees) VALUES('$reg_id','$curtzid','$reg_email','$reg_name','$passwd','$reg_gender','$reg_year','$reg_branch','$reg_mob','RGUKT','$ip','NO','150')") or die(mysql_error()))
		 	 {
		 	 		echo "Registered Successfully. Your Teckzite ID is ".$stuid;


      

}
}
}
else
{
echo "Invalid University ID";
}
   
}
	else{
		echo "Please Enter Valid University ID";
		exit;
	}



	
//function for sanitizing variable values


}
else
{
	//blocking User ips
	mysql_query("INSERT INTO blockedips(user,ip,reason) VALUES('$stuid','$ip','Registration Page Values Passing')");
}
}
else
{
echo "Registrations are closed";	
}
?>

