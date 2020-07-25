<?php

require_once '../controller/manage_equipment_controller/reserve_con.php';	

if (isset($_POST['submit'])) {
  $addbookEMS = new controller();
  // call method dd

  $addbookEMS->addbook();
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

#add {
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

#input {
  background-color: white; 
  color: black; 
  padding: 5px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
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
  
  <h4>Reserve Equipment</h4>
  
  <table style="width:50%">
  <tr>  
    <th>Equipment ID</th>
    <th>Equipment</th>
    <th>Quantity</th>
  </tr>
  <tr>
    <td><input type="text" name="id" id="input" required></td>
    <td><input type="text" name="equipment" id="input" required></td>
    <td><input type="text" name="quantity" id="input" required></td>
  </tr>
  </table>
  
  <br>
  
  <center><input type="submit" name="submit" value="RESERVE" id="add"></center>
  
</form> 

<center><form action="bookequip.php" method="post"> 
<input type="submit" name="back" value="BACK" id="add">
</form>
</center>


</body>
</html>
