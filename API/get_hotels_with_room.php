l<?php

require "connect.php";
$data=json_decode(file_get_contents('PHP://input'),true);
$city=$data['city'];
// $result="SELECT h.*,r.* FROM hotelier as h INNER JOIN roomlisting as r ON h.hotel_id = r.hotel_id where h.city='" . $city ."'";

$result="SELECT * FROM hotelier where city='" . $city ."'";

$res1=mysqli_query($conn,$result);
$value=array();


while($row=mysqli_fetch_assoc($res1))
{

	$room=array();

	$output=$row;
	

	$query = "SELECT * FROM `roomlisting` where hotel_id='".$row['hotel_id']."'";

	$res2=mysqli_query($conn,$query);

	while($row1=mysqli_fetch_assoc($res2))
	{
	
		$room[]=$row1;

	}

	$output["rooms"]=$room;

	$value[]=$output;
}
echo json_encode(array("result"=>$value));
?>