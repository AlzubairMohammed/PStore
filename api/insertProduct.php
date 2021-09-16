<?php

    include("config.php") ;

    $name = $_POST["name"];
    $type = $_POST["type"];
    $price = $_POST["price"];
    $descr = $_POST["descr"];
    


    $img1_name=$_FILES["img1"]["name"];
    move_uploaded_file($_FILES["img1"]["tmp_name"],"../uploads/$img1_name");
    $img2_name=$_FILES["img2"]["name"];
    move_uploaded_file($_FILES["img2"]["tmp_name"],"../uploads/$img2_name");
    $img3_name=$_FILES["img3"]["name"];
    move_uploaded_file($_FILES["img3"]["tmp_name"],"../uploads/$img3_name");

    $resp["status"] = mysqli_query($con, "insert into Products( name  ,type ,img1 ,img2 ,img3,price ,descr) values('$name','$type' ,'uploads/$img1_name' ,'uploads/$img2_name' ,'uploads/$img3_name','$price','$descr')"); 
    echo json_encode($resp);

?>