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
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 0px;
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
<center><h2 style="color:   #FFA500;">Teckzite Participant IDs</h2>
<table id="customers">
<tr>
  <?php
$as=mysql_query("SELECT * FROM users WHERE paid='yes' ORDER BY year,branch");
$num=0;
while($as_f=mysql_fetch_array($as)){
?>
    <td><center><?php echo "<font size='5'>".$as_f['tzid']."</font>";?></center><?php echo "<img src='id/index.php?id=".$as_f['stuid']."' width='450px'>";?></td>
<?php $num++; if($num%3==0){echo "</tr><tr>";}} ?>
</tr>
</table>
</center>
</body>
</html>
