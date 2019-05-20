<?php
    include 'conn.php';
    $name = isset($_POST['name'])? $_POST['name']:'';
    $pws = isset($_POST['password'])? $_POST['password']:'';

    //查找用户名与密码数据库
    $sql= "SELECT * FROM  users WHERE tel='$name' and password='$pws'";

    //执行sql
    $result = $conn->query($sql);

    if($result->num_rows){
          echo 'yes';
    }else{
        echo 'no';
    }

?>