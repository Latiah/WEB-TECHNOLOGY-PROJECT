<?php
require("connect.php");
$fname = $_REQUEST["firstname"];
$lname = $_REQUEST["lastname"];
$location = $_REQUEST["country"];
$email = $_REQUEST["email"];
$password = $_REQUEST["psw"];
$query ="insert into patient (FIRSTNAME, LASTNAME, COUNTRY, EMAIL, PASSWORD) values ('$fname', '$lname', '$location', '$email', '$password')";
$results = mysqli_query($con,$query);
if($results){
    echo " YOUR INFORMATION WAS SUBMITTED PROCEED WITH OTHER STEPS<BR>";
}
else{
    echo "something is wrong".mysqli_error($con);
}
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-image: url('register.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:foc
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<form>
  <div class="container">
    <h1>PERSONAL INFORMATION</h1>
    <p>Please fill in this form to create an account .</p>
    <hr>
        <form action="" method="get">
          <label for="fname"><b>FIRST NAME</b></label>
          <input type="text" id="fname" name="firstname" placeholder=" ">
          <label for="lname"><b>LAST NAME</b></label>
          <input type="text" id="lname" name="lastname" placeholder="">
          <label for="country"><b>COUNTRY</b></label>
        <input type="text" id="country" name="country" placeholder="">
    <label for="email"><b>EMAIL</b></label>
    <input type="text" placeholder=" " name="email" id="email" required>

    <label for="psw"><b>PASSWORD</b></label>
    <input type="password" placeholder=" " name="psw" id="psw" required>
    <hr>
    <p>By creating an account you agree to  receiving our services</p>

    <button type="submit" class="registerbtn">SUBMIT</button>
  </div>
</form>

</body>
</html>