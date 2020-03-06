<?php

require "connect.php";

$data= json_decode(file_get_contents('php://input'), true);

$user_name     = $data["user_name"];
$user_password  = $data["user_password"];
$email    = $data["email"];
$contact_no = $data["contact_no"];
$dob = $data["dob"];
$gender = $data["gender"];
$profile_pic = $data["profile_pic"];

$output     = array();

$sql="select * from user_info where email='$email'";
$res=mysqli_query($conn,$sql);

if (mysqli_num_rows($res) > 0) {

	$output["response"]=0;
	$output["id"]=0;
	$output["message"] = "Email is already existing.";

    }
         else {

		$sql_query = "INSERT INTO user_info(user_name, user_password, email, contact_no, dob, gender, profile_pic) VALUES('".$user_name."','".$user_password."','".$email."','".$contact_no."', '".$dob."', '".$gender."', '".$profile_pic."')";
3
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

	}
echo json_encode($output);
?>