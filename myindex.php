<?php
 $insert=false;

if (isset($_POST['name']))
{
$server = "localhost";
$username = "root";
$password = "";
$db ="mydb";

$con = mysqli_connect($server, $username, $password, $db);


if(!$con)
{
    die("Connection to this database failed due to ". mysqli_connect_error());
}    
 
echo "Successful connection to the database"  ;

$sno=$_POST['sno'];
$name=$_POST['name'];
$gender=$_POST['gender'];
$age=$_POST['age'];
$email=$_POST['email'];
/*$phone=$_POST['phone'];*/
$mdesc=$_POST['mdesc'];
 
$sql="INSERT INTO trip (sno, name, age, gender, email,  mdesc, dt)
values ('$sno', '$name', '$age', '$gender', '$email', '$mdesc', current_timestamp());";

/*echo $sql;*/
if ($con->query($sql) == true)
{
    echo "Successfully Inserted";
    $insert=true;
}
 
else
{
echo "ERROR: $sql <br> $con->error";
}

$con->close();

}    /*IF ISSET CLOSE HERE */ 
?>