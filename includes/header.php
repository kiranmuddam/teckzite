    <!-- Navigation -->
    <?php
    session_start();
    ?>

    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll logo" href="index" style="font-size:18px;"><img src="assets/img/tz.png" style="float:left;"><span style="float:right;margin-top:11%;font-weight:bold;">Teckzite</span></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                      <a href="#page-top"></a>
                    </li>
                    <li>
                      <a class="page-scroll" href="index">Home</a>
                    </li>
                    <li>
                      <a class="page-scroll" href="events">All Events</a>
                    </li>
                    <li>
                      <a class="page-scroll" href="schedule">Schedule</a>
                    </li>
                    <?php
    $today=date('m-d-Y');
    $w=mysql_query("SELECT * FROM notifications where added_date='$today' and visibility=1");
    $count=mysql_num_rows($w);
    ?>
                    <li>
                      <a class="page-scroll" href="notices">Notifications <?php if($count>0){ ?>
                      <span class="label label-danger"><?php echo $count; }else{}?></span></a>
                    </li>
                     <li>
                      <a class="page-scroll" href="contact">Contact us</a>
                    </li>
                    <li>
                      <a class="page-scroll" href="about">About Us</a>
                    </li>  
                    <li>
                      <a class="page-scroll" href="team">Team</a>
                    </li>
                    <?php                    if(!isset($_SESSION['stuid'])){                    
                    ?> 
                     <li>
                      <a class="page-scroll hvr-fade-ticket ticket_btn_designer" href="login">Login / Register</a>
                    </li>
                    <?php
                    }else{

                    $getuserdata=mysql_fetch_array(mysql_query("SELECT * FROM users WHERE email='".mysql_real_escape_string($_SESSION['stuid'])."' || stuid='".mysql_real_escape_string($_SESSION['stuid'])."' || tzid='".mysql_real_escape_string($_SESSION['stuid'])."'"));
                      ?>                                                                
                    <li>                                          
                      <a class="page-scroll" href="profile">Hi,&nbsp;<?php echo $getuserdata['tzid'] ?></a>
                    
                    </li>
                    <?php
                  }
                  ?>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
