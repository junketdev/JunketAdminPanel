<?php require "connect.php";
  
  //check button is click or no t using this function isset().
  if (isset($_REQUEST['save']))
  {
  
    $admin_name=$_REQUEST['aid'];
    $admin_password=$_REQUEST['apas'];

    $sql="SELECT * FROM admin WHERE admin_name='".$admin_name ."' and admin_password='".$admin_password."'";
    $res=mysqli_query($conn,$sql);
    $row=mysqli_num_rows($res); 

    if ($row==1) 
    {
    //session variable created and stored in the value.
      $_SESSION['adlogin']=$admin_name;
    ?>
  <script type="text/javascript">window.location.href="AdminHome.php"</script>
    <?php        
        }
    else
    { 
  ?>
      <div style="color:white;padding-top:10px;padding-bottom:10px;background-color:red;text-align:center;font-size:20px;">
    Username and Password Invalid... Try again...!!!
    </div>
  <?php 
  }
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Your Project Name</title>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<!-- 	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"> -->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form" method="POST">
					<div class="login100-form-avatar">
						<img src="images/junketlogo.png" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						Admin Login
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
					<input type="text" class="input100" name="aid" placeholder="ADMIN ID"><span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
					<input type="Password" class="input100" name="apas" placeholder="PASSWORD"><span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
						
					<input type="submit" name="save" value="LOGIN" class="login100-form-btn">
					</div>
					<div class="container-login100-form-btn p-t-10">
					<input type="reset" name="res" value="RESET" class="login100-form-btn2"></div>

				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>