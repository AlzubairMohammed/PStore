<?php
include("config.php");

$pass = $_POST["pass"];
$email = $_POST["email"]; 

$result = mysqli_query($con , "select * from Users where email='$email' and pass='$pass'");
if(mysqli_num_rows($result)==0)
    $resp["status"]=false;
else{
    $resp = mysqli_fetch_all($result,MYSQLI_ASSOC); 
    $resp["status"]=true;
    
}
echo json_encode($resp) ;

?>