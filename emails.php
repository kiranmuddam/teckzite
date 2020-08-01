<?php
include("site-settings.php");
?>
<?php
$as=mysql_query("SELECT * FROM data LIMIT 10,10");
$sno=1;
while($as_f=mysql_fetch_array($as)){
?>
<?php echo $as_f['email'].",";?>
  
<?php } ?>
