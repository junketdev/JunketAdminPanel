  <?php       
       $conn = mysqli_connect("localhost","root","","junketdb");
		$result = mysqli_query($conn,$sql);

	$qqid = $_POST['qqid'];	
	$question=$_POST['question'];
	$option1=$_POST['op1'];
	$option2=$_POST['op2'];
	$option3=$_POST['op3'];
	$option4=$_POST['op4'];

	$sql2 = "update questionnaire set question='$question', option1='$option1', option2='$option2', option3='$option3', option4='$option4' where qid='$qqid'";

	$result2 = mysqli_query($conn,$sql2);
	if ($result2)
	{
		header('location: questionnaire_view.php');
	}
	else
	{

		echo "<script> alert ('Error !! while updating Try again') ; window.location = 'questionnaire_view.php'; </script>";
	}

?>