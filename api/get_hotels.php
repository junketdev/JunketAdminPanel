<?php

require "connect.php";
$data=json_decode(file_get_contents('PHP://input'),true);
$city=$data['city'];
$result="SELECT * FROM hotelier where city='" . $city ."'";
$res1=mysqli_query($conn,$result);
$value=array();

while($row=mysqli_fetch_assoc($res1))
{
	$value[]=$row;
}
echo json_encode(array("result"=>$value));
?>