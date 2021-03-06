<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM hotelier";
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM hotelier WHERE  
    hotelier_id='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="hotelier.php"</script>
<?php
  }
  
?>

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
                        <a class="nav-link" href="user_view.php">
                            <i class="fa fa-users"></i>
                            <p>Manage Users</p>
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
                    <a class="navbar-brand" href="AdminHome.php"> Dashboard </a>
                    <button href="#" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        
                        <ul class="navbar-nav ml-auto">
                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="no-icon"> <?php
                                    session_start(); $username =
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
                  <b>Enquiry Details</b>
                  <br/>

                    <div class="row">

                  
                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                    
                    <th>Hotelier Id</th>
                    <th>Hotelier Name</th>
                    <th>City</th>
                    <th>Hotelier Address</th>
                    <th>Longitude</th>
                    <th>Latitude</th>
                    <th>Contact No</th>
                    <th>Hotelier Email</th>
                    <th>Rating</th>
                    <th>Images</th>
                    <th>Website</th>
                    <th>Action</th>
                   
                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo $rows['hotel_id']; ?></td>
                    <td><?php echo $rows['hotelier_name']; ?></td>
                    
                    <td><?php echo $rows['city']; ?></td>
                    <td><?php echo $rows['hotelier_address']; ?></td>
                    <td><?php echo $rows['longitude']; ?></td>
                    <td><?php echo $rows['latitude']; ?></td>
                    
                    <td><?php echo $rows['contact']; ?></td>
                    <td><?php echo $rows['hotelier_email']; ?></td>
                    <td><?php echo $rows['rating']; ?></td>
                    <td><?php echo $rows['image']; ?></td>
                    <td><?php echo $rows['website']; ?></td>

                    <td>
                      <a class='btn btn-primary' href="#">Edit</a>
                      <a class='btn btn-danger' href="hotelier.php?del=<?php echo $rows['hotel_id']; ?>">Delete</a>
                    </td>
                  </tr>
                  <?php } ?>
                  </table>


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