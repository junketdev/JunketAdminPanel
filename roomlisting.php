<?php

require "connect.php";


if (isset($_REQUEST['submit']))
{


$room_type    = $_POST["room_type"];
$room_price   = $_POST["room_price"];
$room_description = $_POST["room_description"];
$img1  = "pick1.jpg";
$img2  = "pick2.jpg";
$img3  = "pick3.jpg";
$hid = "H502";
$roomid = "R45";


$sql_query = "INSERT INTO roomlisting(room_type,room_price,room_description,img1,img2,img3,hotel_id,room_id) 
              VALUES ('".$room_type."','".$room_price."','".$room_description."','".$img1."','".$img2."','".$img3."','".$hid."','".$roomid."')";

        

if(mysqli_query($conn,$sql_query))
{
echo "room details saved";
    //$output["response"]=1;
    //$output["id"]=$conn->insert_id;
    //$output["message"] = "Submission Successfull.";
} else {

    echo "room details failed";
    
}

}
?>



<html>
<head>
<title>Hotelier Room Listing</title>



<!--CSS DESIGN-->
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>J U N K E T</title>
    <!-- Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard790f.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/custome.css" rel="stylesheet" />
    <!-- Google Tag Manager -->
    </head>

    <body>
    <div class="wrapper">
        <div class="sidebar" data-image="assets/img/sidebar-4.jpg">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="home.html" class="simple-text"><b><H2>
                        J U N K E T
                    </H2></b></a>
                </div>
                <ul class="nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="questionnaire_view.php">
                            <i class="fa fa-dashboard"></i>
                            <p>Questionnaire</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="roomlisting.php">
                            <i class="fa fa-users"></i>
                            <p>ADD ROOMS</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="inquirydetails.php">
                            <i class="fa fa-bell"></i>
                            <p>Manage Inquiry</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="booking_view.php">
                            <i class="fa fa-heart"></i>
                            <p>Manage Bookings</p>
                        </a>
                    </li>

                    <li>
                        <a class="nav-link" href="hotelier.php">
                            <i class="fa fa-heart"></i>
                            <p>Manage Hotelier</p>
                        </a>
                    </li>

                    <li>
                        <a class="nav-link" href="logout.php">
                            <i class="fa fa-lock"></i>
                            <p>Logout</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class=" container-fluid  ">
                    <a class="navbar-brand" href="#pablo"> Dashboard </a>
                    <button href="#" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        
                        <ul class="navbar-nav ml-auto">
                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="no-icon"> 
                                    
                                        <?php
                                    session_start(); 
                                    $username =
                                    $_SESSION['adlogin']; echo $username; ?>
                                    
                                    </span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#">Update Profile</a>
                                    <a class="dropdown-item" href="#">Update Password</a>
                                    <div class="divider"></div>
                                    <a class="dropdown-item" href="#">Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->


            <div class="content">
                <div class="container-fluid">
                  <b><H3>Add Room </H3></b>
                  <br/>

                    <div class="row">


        <!--END OF PART 1 OF CSS--> 

<body>
    <div class="center">
       <form method="POST"> 
	   
		      <font size ="4"><label> Room Type </label>
           
            
            
		      <select name="room_type">
                    <option value="Single">    Single  </option>
                    <option value="Double">    Double  </option>      
                    <option value="King">    King  </option>           
                    <option value="Suite">    Suite  </option>      
                </select>

            <br><br>
            
		      <label> Price Per Night </label>
            
        <input type="text" name="room_price">  <br>

        <label> Description </label><br>

        <textarea id= "Description" rows="4" cols="10" name="room_description"></textarea><br><br>

        <label>Upload Room Images [Max. 3 jpg images ] :</label><br><br>
        <input type="File" name="File1"> <br><br>
        <input type="File" name="File2"> <br><br><br>
        <input type="File" name="File3"> <br><br><br>



        <p>
        <input type="submit" value="Submit" name="submit">
        <input type="RESET" value="Reset" name="Reset"></p>
        <label> </label></font>
    </form>

</div>
</body>
</html>

<!--
                   CSS DESIGN
                  -->
                  </div>
                </div>
            </div>
            
            <footer class="footer">
                <div class="container">
                    <nav>
                        <p class="copyright text-center">
                            ©
                            <script>
                                document.write(new Date().getFullYear())
                            </script>
                            <a href="">Junket</a>, made with love from Nirmal,Urvish,Prem & Vaibhavi
                        </p>
                    </nav>
                </div>
            </footer>
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>

<script src="assets/js/light-bootstrap-dashboard790f.js?v=2.0.1" type="text/javascript"></script>
<script src="assets/js/demo.js"></script>
</html>
