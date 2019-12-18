<?php
$conn=mysqli_connect("localhost","root","","junketdb");
	
	if(!isset($_SESSION['adlogin'])) 
	{ 
        	session_start(); 
    	} 
?>