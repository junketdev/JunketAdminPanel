<?php

require "connect.php";

$data = json_decode(file_get_contents('php://input'), true);

$email=$data["email"];


$sql_query = "SELECT * FROM user_info WHERE email='$email'";


$result = mysqli_query($conn,$sql_query);  
$value = array();
$check = mysqli_fetch_array($result);
//if we got some result 
 if(isset($check)){

 	$code=substr(str_shuffle("0123456789"), 0, 6);


$output["response"]=1;
$output["id"]=$check['user_id'];
$output["verificationcode"]=$code;
$output["message"] = "Verification code sent on your email";
} else {
$output["response"]=0;
$output["id"]=0;
$output["verificationcode"]=0;
$output["message"] = "Email not found";
}

echo json_encode($output);

?>