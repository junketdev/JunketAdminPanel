<?php

require "connect.php";

$data= json_decode(file_get_contents('php://input'), true);

$user_name     = $data["user_name"];
$user_id  = $data["user_id"];
$contact_no = $data["contact_no"];
$dob = $data["dob"];
$gender = $data["gender"];
$profile_pic = $data["profile_pic"];

$output     = array();



		$sql_query = " UPDATE  user_info SET user_name = '$user_name',contact_no = '$contact_no', dob = '$dob', gender = '$gender', profile_pic = '$profile_pic' where user_id='$user_id'" ;
		if(mysqli_query($conn,$sql_query))
		{
			$output["response"]=1;
			$output["id"]=$conn->insert_id;
			$output["message"] = "Data Inserted";
		} else {
			$output["response"]=0;
			$output["id"]=0;
			$output["message"] = "Data not inserted";
		}

	
echo json_encode($output);
?>