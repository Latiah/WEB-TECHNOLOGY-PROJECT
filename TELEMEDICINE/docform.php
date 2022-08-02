<?php 
	require("connection.php");
			$names = $_REQUEST["fullname"];
			$speciality = $_REQUEST["speciality"];
			$email = $_REQUEST["email"];
			$contact = $_REQUEST["contact"];
			$query = "INSERT INTO doctors(FULLNAMES, SPECIALITY, EMAIL, CONTACT) 
			           VALUES('$names', '$speciality', '$email', $contact)";
			$rs = mysqli_query($con, $query);
            if($rs){
                echo "submitted succefully";
            }else{
                echo "something is wrong";
            }
            ?>
            <!DOCTYPE html>
            <html>
                <body>
    <h2>DOCTORS</h2><hr/> 
     <form method="post" action="" >
	 <label for="fname"><b>FULLNAME</b></label>
          <input type="text" id="Fname" name="fullname" placeholder=" "><br>
          <label for="speciality"><b>SPECIALITY</b></label>
          <input type="text" id="speciality" name="speciality" placeholder=""><br>
          <label for="email"><b>EMAIL</b></label>
        <input type="email" id="email" name="email" placeholder=""><br>
    <label for="contact"><b>CONTACT</b></label>
    <input type="number" placeholder=" " name="contact" id="contact"><br>
	<button type="submit" class="registerbtn">SUBMIT</button>
	 </form> 
        </body>
     </html>