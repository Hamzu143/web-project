<?php

if(isset($_POST['medical']))
{
	$Name =$_POST['Name'];
$Email_address =$_POST['Email_address'];
$Phone_Number =$_POST['Phone_Number'];
$CNIC =$_POST['CNIC'];
$Adddress=$_POST['Address'];
$Select_Test =$_POST['Select_Test'];


	// Database connection
	$conn = new mysqli('localhost','root','','hospital');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} 
		$sql="insert into medical_test_registration(Name, Emailaddress, PhoneNumber, CNIC, Address, SelectTest) values('$Name', '$Email_address', '$Phone_Number', '$CNIC', '$Adddress', '$Select_Test')";
		if ($conn->query($sql) === TRUE) {
			echo "<script>alert('New record created successfully')</script>";
		  } else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		  }
	
}




?>