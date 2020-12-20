<?php
 $insert=false;

if (isset($_POST['name']))
{
// $server = "localhost";
// $username = "root";
// $password = "";
// $db ="mydb";

            
   // PORT 3306 
           
   $username = "ulmn8jagnfx4kcpx";
   $password="FqeR2bzSHuGSoRWizQKV";
   $db ="bm2r5yopsfrjtyafew6x";
   $server = "bm2r5yopsfrjtyafew6x-mysql.services.clever-cloud.com:3306";

$con = mysqli_connect($server, $username, $password, $db);

if(!$con)
{
    
    die("Connection to this database failed due to ". mysqli_connect_error());
    
}    
 

echo ("Successful connection");


$sno=$_POST['sno'];
$name=$_POST['name'];
$age=$_POST['age'];
$gender=$_POST['gender'];
$marriedyn=$_POST['marriedyn'];
$phone=$_POST['phone'];
$email=$_POST['email'];
$mdesc=$_POST['mdesc'];

 
//Serial number Automatically Increaments
 
 $sql="INSERT INTO trip (name, age, gender, married, phone, email,  mdesc, dt)
values ('$name', '$age', '$gender', '$marriedyn', '$phone', '$email', '$mdesc', current_timestamp());";

/*echo $sql;*/
if ($con->query($sql) == true)
{
    
    echo ("Successfully Inserted"); 
    
         
    $insert=true;
}
 
else
{
    echo "ERROR: $sql <br> $con->error";
}

$con->close();

}    /*IF ISSET CLOSE HERE */ 


header("location:index.html");   //REDIRECT TO CALLING FILE

?>
