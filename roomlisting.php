<?php

require "connect.php";


if (isset($_REQUEST['submit']))
{


$room_type    = $_POST["room_type"];
$room_price   = $_POST["room_price"];
$room_description = $_POST["room_description"];
$img1  = "pick1.jpg";
$img2  = "pick2.jpg";
$img3  = "pick3.jpg";
$hid = "H502";
$roomid = "R45";


$sql_query = "INSERT INTO roomlisting(room_type,room_price,room_description,img1,img2,img3,hotel_id,room_id) 
              VALUES ('".$room_type."','".$room_price."','".$room_description."','".$img1."','".$img2."','".$img3."','".$hid."','".$roomid."')";

        

if(mysqli_query($conn,$sql_query))
{
echo "room details saved";
    //$output["response"]=1;
    //$output["id"]=$conn->insert_id;
    //$output["message"] = "Submission Successfull.";
} else {

    echo "room details failed";
    
}

}
?>



<html>
<head>
<title>Hotelier Room Listing</title>

<!--
<style>
    .center {
        margin:-90px 0 0 -150px;
        width: 500px;
        height: 150px;
        position: absolute;
        left: 50%;
        top: 40%;
        border: 3px solid black;
        padding: 20px;
    }
</style>
-->

</head>
<body>
    <div class="center">
       <form method="POST"> 
	   
		      <font size ="4"><label> Room Type </label>
           
            
            
		      <select name="room_type">
                    <option value="Single">    Single  </option>
                    <option value="Double">    Double  </option>      
                    <option value="King">    King  </option>           
                    <option value="Suite">    Suite  </option>      
                </select>

            <br><br>
            
		      <label> Price Per Night </label>
            
        <input type="text" name="room_price">  <br>

        <label> Description </label><br>

        <textarea id= "Description" rows="4" cols="10" name="room_description"></textarea><br><br>

        <label>Upload Room Images [Max. 3 jpg images ] :</label><br><br>
        <input type="File" name="File1"> <br><br>
        <input type="File" name="File2"> <br><br><br>
        <input type="File" name="File3"> <br>


        <p>
        <input type="submit" value="Submit" name="submit">
        <input type="RESET" value="Reset" name="Reset"></p>
        <label> </label></font>
    </form>

</div>
</body>
</html>