<?php 
  //include "header.php";
  //include "menu.php";
  $sql    = "SELECT * FROM questionnaire";
  $conn= mysqli_connect("localhost", "root", "", "junketdb");
  $result = mysqli_query($conn,$sql);
  
  // Auto Increment Serial No variable.
  $count  = 0;
  
  
  // Delete Query If click the delete button then check using isset() method.
  if (isset($_REQUEST['del']))
  {
    $delete1="DELETE FROM questionnaire WHERE  
    qid='".$_REQUEST['del']."' " ;
    $del_resut1 = mysqli_query($conn,$delete1);


?>
  <script type="text/javascript">window.location.href="questionnaire_view.php"</script>
<?php
  }

  //Edit Query if click the edit buttob then check using isset() method !
  if (isset($_REQUEST['edit'])) 
  {
    # code...
    $ed1="UPDATE questionnaire where 
    qid='".$_REQUEST['edit']."'";
    $edit_result=mysqli_query($conn,$ed1);
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
                  <b>List Of Questionnaire :</b>
                  <br/>

                    <div class="row">



                  <table class="table table-hover" border="5">
                  <tr style="color:blue">
                    <th>Serial No</th>
                    <th>Question Id</th>
                    <th>Question</th>
                    <th>Option 1</th>
                    <th>Option 2</th>
                    <th>Option 3</th>
                    <th>Option 4</th>
                    <th>Action</th>
                    

                  </tr>
                  <?php 
                    //Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) {
                  ?>
                  <tr>
                    <td><?php echo ++$count; ?></td>
                    <td><?php echo $rows['qid']; ?></td>    
                    <td><?php echo $rows['question']; ?></td>
                    <td><?php echo $rows['option1']; ?></td>
                    <td><?php echo $rows['option2']; ?></td>
                    <td><?php echo $rows['option3']; ?></td>
                    <td><?php echo $rows['option4']; ?></td>

                    <td>
                      <a class='btn btn-primary' href="edit_questionnaire.php?qid=<?php echo $rows['qid']; ?>">Edit</a>
                      <a class='btn btn-danger' href="questionnaire_view.php?del=<?php echo $rows['qid']; ?>">Delete</a>
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