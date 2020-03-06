<!-- <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Questionnaire</title>
</head> -->

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
                    <div class="row">
                        <div class="col-md-4">
                            <div class="dbox dbox--color-1">
                                <div class="dbox__icon">
                                    <i class="fa fa-users"></i>
                                </div>
                                <div class="dbox__body">
                                    <span class="dbox__count">4.2</span>
                                    <span class="dbox__title">Average Rating</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="roomlisting.php" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="dbox dbox--color-2">
                                <div class="dbox__icon">
                                    <i class="fa fa-bell"></i>
                                </div>
                                <div class="dbox__body">
                                    <span class="dbox__count">001</span>
                                    <span class="dbox__title">Manage Complain</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="hotelfeedback.php" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="dbox dbox--color-3">
                                <div class="dbox__icon">
                                    <i class="fa fa-heart"></i>
                                </div>
                                <div class="dbox__body">
                                    <span class="dbox__count">03</span>
                                    <span class="dbox__title">Total Bookings</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="booking_view.php" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>


                        <!--end of part one-->

<body>
  <form action="#">
    <table border="2">
      <tr>
         <th> List Of Questionnaires </th>
         <th colspan="2"> Actions </th>

      <tr>

      <!-- Question Heading with question number -->
      
      <tr>
        <th>Question 1 : </th>
        <th> Edit</th>
        <th> Delete</th>
      </tr>
    
      <!-- Question Description -->
      <tr>
        <td>Where would you like to go ?</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
            <li><input type="checkbox" name="op1">Beach Side</li>
            <li><input type="checkbox" name="op2">Hill Stations</li>
            <li><input type="checkbox" name="op3">Fort and Palaces</li>
            <li><input type="checkbox" name="op4">Wildlife and Forest</li>
          </ol>
        </td>
      </tr>

      <tr>
        <th>Question 2 : </th>
        <th> Edit</th>
        <th> Delete</th>
      </tr>
    
      <!-- Question Description -->
      <tr>
        <td>For how long you are planning ?</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
            <li><input type="checkbox" name="op1">Less than 2 days</li>
            <li><input type="checkbox" name="op2">3-7 days</li>
            <li><input type="checkbox" name="op3">8-12 days</li>
            <li><input type="checkbox" name="op4">2 weeks or more</li>
          </ol>
        </td>
      </tr>

      <tr>
        <th>Question 3 : </th>
        <th> Edit</th>
        <th> Delete</th>
      </tr>
    
      <!-- Question Description -->
      <tr>
        <td>What is your approx budget?</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
            <li><input type="checkbox" name="op1">less than 2000</li>
            <li><input type="checkbox" name="op2">2000-5000</li>
            <li><input type="checkbox" name="op3">5000-12000</li>
            <li><input type="checkbox" name="op4">More than 12000</li>
          </ol>
        </td>
      </tr>


     <tr>
        <th>Question 4 : </th>
        <th> Edit</th>
        <th> Delete</th>
      </tr>
    
      <!-- Question Description -->
      <tr>
        <td>What type of activities you would like to do?</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
            <li><input type="checkbox" name="op1">Water sports & scuba diving</li>
            <li><input type="checkbox" name="op2">Adventure & Hiking</li>
            <li><input type="checkbox" name="op3">Cultural walk-for museums, local traditions</li>
            <li><input type="checkbox" name="op4">Shopping</li>
          </ol>
        </td>
      </tr>

      <tr>
        <th>Question 5 : </th>
        <th> Edit</th>
        <th> Delete</th>
      </tr>
    
      <!-- Question Description -->
      <tr>
        <td>What kind of trip this would be ?</td>
      </tr>
    
      <!-- Question Options -->
      <tr>
        <td>
          <ol type="a">
            <li><input type="checkbox" name="op1">Family Trip</li>
            <li><input type="checkbox" name="op2">Friends Trip</li>
            <li><input type="checkbox" name="op3">Romantic Trip</li>
            <li><input type="checkbox" name="op4">One Person Trip</li>
          </ol>
        </td>
      </tr>


      <!-- Submit -->
      <tr><td><input type="submit"></td></tr>
    </table>
  </form>
</body>



      
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
