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
    width: 90%;
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
<center><h2 style="color:   #FFA500;">Teckzite'18</h2>
<table id="customers">
<tr><td colspan="2"><a href="tzids" style="font-weight:bold;font-size:20px;text-decoration: none;" target="_blank">Click here for Registered Data</a></td></tr>
<tr><td colspan="2"><a href="tzids?paid" style="font-weight:bold;font-size:20px;text-decoration: none;" target="_blank">Click here for Registered and Paid Data</a></td></tr>
<tr><td colspan="2"><a href="tzids?notpaid" style="font-weight:bold;font-size:20px;text-decoration: none;" target="_blank">Click here for Registered but not Paid Data</a></td></tr>
<tr><td colspan="2"><a href="tzids" style="font-weight:bold;font-size:20px;text-decoration: none;" target="_blank">Click here if you forgot your Teckzite ID</a></td></tr>
<tr><td colspan="2"><a href="id" style="font-weight:bold;font-size:20px;text-decoration: none;" target="_blank">Click here to download Teckzite ID</a></td></tr>
<tr><td style="font-weight: bold;color:red;border: 2px solid black;">Registration Process</td><td style="font-weight: bold;color:red;border: 2px solid black;">Payment Venue</td></tr>
<tr><td style="text-align: left;width:50%;">1. Online registration in website (Link:&nbsp;<span style="font-weight: 700;"><a href="http://10.11.3.55/tz/login" target="_blank" style="color: rgb(217, 28, 86); outline: none;">10.11.3.55/tz/login</a></span>&nbsp; )<br>2. Payment of Registration fee of Rs.100/- (For students of Nuzvid &amp; SKLM)<br>3. Event Registration ( With University Id in website )</div></td>
<td style="text-align: left;">Complete your registration process by paying 100/- at your respective hostel blocks from 05:00 PM to 07:00PM and 08:00 PM to 10:00PM every day.</td></tr>
<tr><td colspan="2"><center>For Technical Problems, contact <b>9010932254</b>.<br><img src="assets/img/webpartner.png" width="200px"></center></td></tr>
</table>
</center>
</body>
</html>
