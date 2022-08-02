<?php
$server="localhost";
$db="telemedicine";
$user="root";
$password="";
$con=mysqli_connect($server,$user,$password,$db);
if($con){
    echo "successful connected<BR>";
}else{
    echo "failed";
}
?>