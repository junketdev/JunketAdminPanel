<?php

require "connect.php";

$data= json_decode(file_get_contents('php://input'),
			 true);


$user_password      = $data["user_password"];
$user_id	= $data["user_id"];


$output     = array();

$sql_query = "UPDATE user_info SET user_password = '".$user_password."' WHERE user_id = '".$user_id."'";

		

if(mysqli_query($conn,$sql_query))
{
	$output["response"]=1;
	$output["message"] = "Password reset succsessful.";
} else {
	$output["response"]=0;
	$output["message"] = "Password reset not succsessful.";
}
echo json_encode($output);
?>