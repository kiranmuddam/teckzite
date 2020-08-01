<?php
include("site-settings.php");
?>
<!DOCTYPE html>
<html>
<head>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}
#customers tr:nth-child(odd){background-color:  #EEE8AA;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body style="background-color:  #008080;">
<center><h2 style="color:   #FFA500;">Teckzite IDs</h2>
<table id="customers">
 <tr><td colspan="4" style="font-weight: bold;">Those who completed Registration process can download ID Card</td>
  <tr>
    <th>sno</th>
    <th>University ID</th>
    <th>Teckzite ID</th>
    <th>Download ID</th>
  </tr>

<?php

$a="SELECT * FROM users";

if(isset($_SERVER['QUERY_STRING']) && !empty($_SERVER['QUERY_STRING']) && $_SERVER['QUERY_STRING']=="paid"){
$a="SELECT * FROM users WHERE paid='yes'";
}
if(isset($_SERVER['QUERY_STRING']) && !empty($_SERVER['QUERY_STRING']) && $_SERVER['QUERY_STRING']=="notpaid"){
$a="SELECT * FROM users WHERE paid='no'";
}

$sno=1;
$as=mysql_query($a);
while($as_f=mysql_fetch_array($as)){
?>
  <tr>
    <td><?php echo $sno++;?></td>
    <td><?php echo $as_f['stuid'];?></td>
    <td><?php echo $as_f['tzid'];?></td>
    <td><?php if($as_f['paid']=="yes"){echo "<a href='id/index.php?id=".$as_f['stuid']."' target='_blank'>Download</a>";}?></td>
  </tr>
<?php } ?>
</table>
</center>
</body>
</html>
