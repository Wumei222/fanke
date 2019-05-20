<?php
    //接受前端传送数据，插入至数据库
    //连接数据库
    include 'conn.php';
    $telphone = isset($_POST['telphone'])? $_POST['telphone']:'';
    $password = isset($_POST['password'])? $_POST['password']:'';

    //用户名与密码插入至数据库
    $sql= "INSERT INTO users(tel,password) VALUES('$telphone','$password')";

    //执行sql
    $result = $conn->query($sql);
    // var_dump($result);
    if($result){
        //true，插入数据库成功
        echo 'yes';
    }else{
        //false，插入数据库失败
        echo 'no';
    }
?>