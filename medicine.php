<?php

if(isset($_POST['medicine']))
{
	$Name =$_POST['Name1'];
$Email_address =$_POST['Email_address1'];
$Phone_Number =$_POST['Phone_Number1'];
$CNIC =$_POST['CNIC1'];
$Adddress=$_POST['Address1'];
$medicine =$_POST['medicine1'];


	// Database connection
	$conn = new mysqli('localhost','root','','hospital');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} 
		$sql="insert into medicine_registration(Name, Emailaddress, PhoneNumber, CNIC, Address, Medicine_needed) values('$Name', '$Email_address', '$Phone_Number', '$CNIC', '$Adddress', '$medicine')";
		if ($conn->query($sql) === TRUE) {
			echo "<script>alert('New record created successfully')</script>";
		  } else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		  }
	
}
?>
           
           