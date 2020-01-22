<?php

require "connect.php";

$data= json_decode(file_get_contents('php://input'), true);

$comp_date    = $data["comp_date"];
$user_id     = $data["user_id"];
$comp_detail     = $data["comp_detail"];
$comp_status   = $data["comp_status"];

$output     = array();



		$sql_query = "INSERT INTO complain(comp_date, user_id, comp_detail, comp_status) VALUES('".$comp_date."','".$user_id."','".$comp_detail."','".$comp_status."')";
		if(mysqli_query($conn,$sql_query))
		{
			$output["response"]=1;
			$output["id"]=$conn->insert_id;
			$output["message"] = "Compliant Registered";
		} else {
			$output["response"]=0;
			$output["id"]=0;
			$output["message"] = "Compliant Not Registered";
		}
echo json_encode($output);
?>