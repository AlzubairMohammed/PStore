<?php
    include("config.php") ;
    
    $pass = $_POST["pass"];
    $name = $_POST["name"];
    $user = $_POST["user"];
    $tel = $_POST["tel"];
    $email = $_POST["email"];
    $addr = $_POST["addr"];
    


    $img_name=$_FILES["img"]["name"];
    move_uploaded_file($_FILES["img"]["tmp_name"],"../uploads/$img_name");
    $resp["status"] = mysqli_query($con, "insert into users( name  ,pass ,user ,tel ,email,addr ,img) values('$name','$pass' ,'$user' ,'$tel' ,'$email','$addr','uploads/$img_name')"); 
    $result = mysqli_query($con , "select id from Users where email='$email' and pass='$pass'");
    
    echo json_encode($resp);
?>