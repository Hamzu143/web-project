<?php

$FullName=$_POST['FullName'];
$Phone=$_POST['Phone'];
$email=$_POST['email'];
$app_time=$_POST['app_time'];
$message=$_POST['message'];

	// Database connection
	$conn = new mysqli('localhost','root','','hospital');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} 
		$sql="insert into appointment(FullName,Phone , email, app_time,message) values('$FullName', '$Phone', '$email', '$app_time', '$message' )";
		if ($conn->query($sql) === TRUE) {
			echo "<script>alert('New record created successfully')</script>";
		  } else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		  }
	
?>
           