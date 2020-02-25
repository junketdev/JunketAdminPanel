<?php

require "connect.php";

$data= json_decode(file_get_contents('php://input'), true);

$booking_id	=	$data["booking_id"];
$hotel_id     = $data["hotel_id"];
$room_id     = $data["room_id"];
$user_id  = $data["user_id"];
$user_name    = $data["user_name"];
$destination = $data["destination"];
$contact_no = $data["contact_no"];
$email = $data["email"];
$room_price = $data["room_price"];
$addcharge_price = $data["addcharge_price"];
$payamount_price = $data["payamount_price"];
$checkin_date = $data["checkin_date"];
$checkout_date = $data["checkout_date"];
$adults = $data["adults"];
$kids = $data["kids"];
$totalnight = $data["totalnight"];
$totalrooms = $data["totalrooms"];

$output     = array();

		$sql_query = "INSERT INTO booking(booking_id,hotel_id,room_id,user_id,user_name, destination,contact_no,email,room_price,addcharge_price,payamount_price,checkin_date,checkout_date,adults,kids,totalnight,totalrooms) VALUES('".$booking_id."','".$hotel_id."','".$room_id."','".$user_id."','".$user_name."', '".$destination."', '".$contact_no."', '".$email."', '".$room_price."','".$addcharge_price."', '".$payamount_price."','".$checkin_date."','".$checkout_date."','".$adults."','".$kids."','".$totalnight."','".$totalrooms."')";
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