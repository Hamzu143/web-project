<?php
$connn = mysqli_connect("localhost","root","","hospital");
$query="select * from ehsas";
$result=mysqli_query($connn,$query); 
?>


<html>
  <head>
<!-- <style> -->
  <style>
    *{
      margin:0px;
      padding:0px
    }
    body{
      background-color:rgba(0,0,0,0.5);
      display: flex;
      width:100vw;
      height:100vh;
      justify-content:center;
      align-items:center
    }
    table{

    }
table,td,th{
  padding: 10px;
 color:white;
text-align:center;
width:600px; 
 border:1px solid white;
  line-height:40px;
  border-collapse:collapse;
}
  </style>

</head>
<body>
<h1>

</h1>
<table  >
  <tr >
    <th>ID</th>
    <th>FirstName</th>
    <th>LastName</th>
    <th>email</th>
    <th>gender</th>
    <th>Phone</th>
    <th>Address1</th>
    <th>Address2</th>
  </tr>
  <?php
  while($rows=mysqli_fetch_assoc($result))
  
  {  ?>
    <tr>
<td><?php echo $rows['id']; ?></td>
<td><?php echo $rows['FirstName']; ?></td>
<td><?php echo $rows['LastName']; ?></td>
<td><?php echo $rows['email']; ?></td>
<td><?php echo $rows['gender']; ?></td>
<td><?php echo $rows['Phone']; ?></td>
<td><?php echo $rows['Address1']; ?></td>
<td><?php echo $rows['Address2']; ?></td>  
</tr>
<?php
  }
  ?>
</table>
</body>
</html>