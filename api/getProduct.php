<?php
include("config.php");

$result = mysqli_query($con,"select * from products") ;


$resp = mysqli_fetch_all($result,MYSQLI_ASSOC) ;


echo json_encode($resp) ;



?>