 <?php
  $server = "localhost";
  $user ="root";
  $pass = "";
  $db = "telemedicine"; 
  
  $con = mysqli_connect($server, $user, $pass, $db);
  if($con){
	  //echo "Byakunze";  
  }else{
	  echo "Ntibigerayo ".mysqli_error($con);
  } 
 ?>