<?php
 require("connection.php");
    $sql="SELECT * FROM doctors";
$result=$con->query($sql);
echo "<h2><u>DOCTORS DETAILS</u></h2>";
while($row=$result->fetch_assoc())
{
  echo "<br><br><b>FULLNAMES:</b>".$row['FULLNAMES']."<br>";
  echo "<b>SPECIALITY:</b>".$row['SPECIALITY']."<br>";
  echo "<b>EMAIL:</b>".$row['EMAIL']."<br>";
  echo "<b>CONTACT:</b>".$row['CONTACT']."<br>";
}
$con->close();
?>