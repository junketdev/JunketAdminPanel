<?php

require "connect.php";
$data=json_decode(file_get_contents('PHP://input'),true);



$city=$data['city'];

$value=array();

$dest_query ="SELECT * FROM destination where dest_name='" .$city."'";

$dest_res = mysqli_query($conn,$dest_query);  
$check = mysqli_fetch_assoc($dest_res);

if(isset($check)){

	$dest_id = $check['dest_id'];


$result="SELECT * FROM attraction where dest_id='" . $dest_id ."'";

$res1=mysqli_query($conn,$result);


while($row=mysqli_fetch_assoc($res1))
{
	$value[]=$row;
}
}
echo json_encode(array("result"=>$value));
?>