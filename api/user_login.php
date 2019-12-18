<?php

require "connect.php";

$data = json_decode(file_get_contents('php://input'), true);

$email   = $data["email"];
$user_password = $data["user_password"];


$sql_query = "SELECT * FROM user_info WHERE email='$email' and user_password='$user_password'";


$result = mysqli_query($conn,$sql_query);  
$value = array();
$check = mysqli_fetch_assoc($result);
//if we got some result 
 if(isset($check)){
$output["response"]=1;
$output["data"]=$check;
$output["id"]=$check['user_id'];
$output["message"] = "Login Successful";
} else {
$output["response"]=0;
$output["data"]=null;
$output["id"]="0";
$output["message"] = "Login Fail";
}

echo json_encode($output);

?>