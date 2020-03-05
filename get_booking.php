<?php

require "connect.php";
$data=json_decode(file_get_contents('PHP://input'),true);
$user_id=$data['user_id'];
$result="SELECT * FROM booking as b INNER JOIN hotelier as h ON b.hotel_id = h.hotel_id INNER JOIN roomlisting as r ON b.room_id = r.room_id where b.user_id='" . $user_id ."'";
$res1=mysqli_query($conn,$result);
$value=array();

while($row=mysqli_fetch_assoc($res1))
{
    $value[]=$row;
}
echo json_encode(array("result"=>$value));
?>