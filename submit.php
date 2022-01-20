<?php

$FirstName =$_POST['FirstName'];
$LastName =$_POST['LastName'];
$email =$_POST['email'];
$gender =$_POST['gender'];
$Phone=$_POST['Phone'];
$Address1 =$_POST['Address1'];
$Address2 =$_POST['Address2'];


	// Database connection
	$conn = new mysqli('localhost','root','','hospital');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} 
	 {
	
		$sql="insert into ehsas(FirstName,LastName , email, gender,	Phone,Address1,Address2) values('$FirstName', '$LastName', '$email', '$gender', '$Phone','$Address1','$Address2' )";
		if ($conn->query($sql) === TRUE) {
			echo "<script>alert('New record created successfully')</script>";
		  } else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		  }
		}
		  ?>