<?php


	$pid=$_REQUEST['property_id'];
	$sql= "SELECT * FROM properties WHERE pid = '$property_id'";
	$conn=mysqli_connect("localhost","root","","junketdb");
	$result=mysqli_query($conn,$sql);


?>

<form method="POST" action="edit_properties.php">
 <table>
 	<tr>
 		<?php
 			//Fetch all data using this function in while loop.
                    while ($rows=mysqli_fetch_array($result,MYSQLI_BOTH)) 
                    {
                    	?>
 		
 		<td>Question : <input type="text" name="question" value="<?php echo $rows['question']; ?>"></td>
 		<input type="hidden" name="qqid" value="<?php echo $qid; ?>">
 		<!--<?php echo $rows['booking_id']; ?>
 		
 		<th><input type="text" name="q1" value="edit_questionnaire.php?question=<?php echo $rows['question']; ?>">Edit</a>
 		-->
 	</tr>

 	<tr>
 		<td>Option 1 : <input type="text" name="op1" value="<?php echo $rows['option1']; ?>"></td>
 	</tr>

 	<tr>
 		<td>Option 2 : <input type="text" name="op2" value="<?php echo $rows['option2'];  ?>"></td>
 	</tr>

 	<tr>
 		<td>Option 3 : <input type="text" name="op3" value="<?php echo $rows['option3'];  ?>"></td>
 	</tr>

 	<tr>
 		<td>Option 4 : <input type="text" name="op4" value="<?php echo $rows['option4'];  ?>"></td>
 	</tr>

 		<?php
 			}
 		?>

 	<tr></tr>
 	<tr>
 		<td><input type="submit" name="SUBMIT" name="update"></td>
 		<td><input type="reset" name="RESET"></td>
 	</tr>
 </table>
</form>

</html>