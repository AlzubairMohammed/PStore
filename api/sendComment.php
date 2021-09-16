<?php
include("config.php") ;


$userId = $_POST["id"] ;
$userImg = $_POST["userImg"] ;
$userName = $_POST["userName"] ;
$comment = $_POST["comment"] ;


$resp["status"] = mysqli_query($con,"insert into Comments(userId,comment,img,name) values ('$userId','$comment','$userImg','$userName')") ;

  

echo json_encode($resp) ;

?>