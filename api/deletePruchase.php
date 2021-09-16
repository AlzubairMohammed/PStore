<?php
include("config.php") ;

$id = $_POST["id"] ;

$resp["status"] = mysqli_query($con,"delete from pruchases where id = '$id'") ;




echo json_encode($resp) ;



?>