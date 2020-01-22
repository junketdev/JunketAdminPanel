<?php

require "connect.php";

$data= json_decode(file_get_contents('php://input'),
			 true);


$hotelier_id      = $data["hotelier_id"];
$rating	=$data["rating"];


$output     = array();

$sql_query = "UPDATE hotelier SET rating = '".$rating."' WHERE hotelier_id = '".$hotelier_id."'";

		

if(mysqli_query($conn,$sql_query))
{
	$output["response"]=1;
	$output["message"] = "Rating posted succsessful.";
} else {
	$output["response"]=0;
	$output["message"] = "Rating not posted.";
}
echo json_encode($output);
?>