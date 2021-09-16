<?php
include("config.php") ;

$name = $_POST["name"] ;
$img = $_POST["img"] ;
$productId = $_POST["productId"] ;

mysqli_query($con,"insert into pruchases(productId,name,img) values('$productId','$name','$img')") ;
$result = mysqli_query($con,"select quantity from pruchases where productId = '$productId'") ;

$quantity = mysqli_fetch_assoc($result);


$x=$quantity["quantity"];

$x++;

 $resp["status"] = mysqli_query($con,"update pruchases set quantity = '$x' where productId = '$productId'") ;

// echo mysqli_error($con); 
echo json_encode($resp);





?>