<?php
	//session is start
	session_start();

	//session blank
	$_SESSION['hologin']="";

	//session destroy
	session_destroy();

	//re-locate your page.
	header("Location:hlogin.php");

?>
