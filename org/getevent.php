
<?php
include 'site-settings.php' ;
$q=$_REQUEST['q'];
$m=mysql_query("SELECT * FROM users where stuid='$q'");
$row=mysql_fetch_array($m);
$num=mysql_num_rows($m);

if($num!=0)
{
	echo '  
    <br><br>
                        <div class="col-md-12">
                        <p> Start Time : '.$row['start_time'].'</p>
                        <p> End time :'.$row['end_time'].'</p>      
                        <p> Date :'.$row['event_date'].'</p>
                        <p>  Status : '.$row['status'].'</p>
                                                                         
                           </div>
                           <br><br>
                             
                                <!-- END PROFILE CONTENT -->';
                            }else{

                             ?>
                             <div class="alert alert-danger">
                             	<i class="fa fa-bullhorn"></i><strong> Sorry,</strong> Requested Event  is not matches to our records.Please Check it once
                             </div>
                             <?php
                            }
                            ?>
     
