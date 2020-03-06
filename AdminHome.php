<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Your Project Name</title>
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
                        <a class="nav-link" href="Logout.php">
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
                                    <a class="dropdown-item" href="logout.php">Logout</a>
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
                                    <span class="dbox__count">03</span>
                                    <span class="dbox__title">Manage Users</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="user_view.php" class="dbox__action__btn">More Info</a>
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
                                    <a href="inquirydetails.php" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="dbox dbox--color-3">
                                <div class="dbox__icon">
                                    <i class="fa fa-heart"></i>
                                </div>
                                <div class="dbox__body">
                                    <span class="dbox__count">8</span>
                                    <span class="dbox__title">Manage Bookings</span>
                                </div>
                                
                                <div class="dbox__action">
                                    <a href="booking_view.php" class="dbox__action__btn">More Info</a>
                                </div>              
                            </div>
                        </div>
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
