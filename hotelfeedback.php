<?php 
  //include "header.php";
  //include "menu.php";
  $comp_id = "C01";
  $sql    = "SELECT * FROM complain where comp_id = '" . $comp_id . "'" ;
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM complain WHERE  
    comp_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="hotelfeedback.php"</script>
<?php
  }
  
?>



<!--CSS DESIGN-->
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>J U N K E T -- Hotelier Page</title>
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
                    <a href="home.html" class="simple-text">
                        <b><H2>
                        J U N K E T
                    </H2></b>
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Questionnaire.php">
                            <i class="fa fa-dashboard"></i>
                            <p>QUESTIONNAIRE</p>
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
                            <p>EDIT PROFILE</p>
                        </a>
                    </li>

                    <li>
                        <a class="nav-link" href="hotellogout.php">
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
                                        $username = $_SESSION['adlogin'];
                                        echo $username;
                                        ?>
                                        


                                    </span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#">Update Profile</a>
                                    <a class="dropdown-item" href="#">Update Password</a>
                                    <div class="divider"></div>
                                    <a class="dropdown-item" href="hotellogout.php">Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
             <div class="content">
                <div class="container-fluid">
                  <b>Hotel Feedback</b>
                  <br/>

                    <div class="row">

           


        <!--END OF PART 1 OF CSS--> 

                 
                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                    
                    <th>Complain Id</th>
                    <th>User Id</th>
                    <th>Date</th>
                    <th>Details</th>
                    <th>Status </th>
                    <th>Type </th>
                    <th>Action </th>


                    

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) 
                    {
                  ?>
                  <tr>
                    <td><?php echo $rows['comp_id']; ?></td>
                    <td><?php echo $rows['user_id']; ?></td>
                    <td><?php echo $rows['comp_date']; ?></td>
                    <td><?php echo $rows['comp_detail']; ?></td>
                    <td><?php echo $rows['comp_status']; ?></td>
                    <td><?php echo $rows['comp_type']; ?></td>
                    
                    <td>
                     
                      <a class='btn btn-danger' href="hotelfeedback.php?del=<?php echo $rows['comp_id']; ?>">Delete</a>
                    </td>
                  </tr>
                  <?php 
                    } 
                  ?>
                  </table>

               
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

