<?php

require_once '../controller/manage_equipment_controller/reserve_con.php';	


if (isset($_POST['submit'])) {
  $deletebookEMS = new controller();
  // call method dd

  $deletebookEMS->deletebook();
}
  
?>

<!DOCTYPE html>
<html>

<head>
<style>
table, td , th{
  border: 1px solid black;
  border-collapse: collapse;
}
td {
  padding: 15px;
}
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}

input {
  background-color: white; 
  color: black; 
  padding: 5px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 13px;
  margin: 4px 2px;
  background-color: #c3c3c3;
}
  

body {
  background-color: #ffffff;
}
</style>
</head>

<body>

<img src="icon-icecinno.png" alt="ice-cinno pic" width="1500" height="200">

<form name="form" action="" method="POST">
  <table style="width:100%" id="table1">
  <tr>
    <td><a href="http://localhost/sdw/ManageLogin/View/ParticipantProfile.php" target="_self">Home</a></td>
    <td><a href="http://localhost/sdw/ManageEquipment/manage_equipment/bookequip.php" target="_self">Equipment</a></td>
	<td><a href="http://localhost/sdw/ManageLogin/View/">Logout</a></td>
  </tr>
  </table>
  
  <h2>BOOKING EQUIPMENT</h2>
  
  <h4>Delete Booking</h4>
  
  <table style="width:40%">
  <tr>  
    <th>Equipment ID</th>
  </tr>
  <tr>
    <td><input type="text" name="id" id="input" required></td>
  </tr>
  </table>
  
  <br>
  
  
<center><input type="submit" name="submit" value="DELETE" id="add"><center>
  
</form> 


<center><form action="cart.php" method="post"> 
<input type="submit" value="BACK" id="add">
</form></center>


</body>
</html>
