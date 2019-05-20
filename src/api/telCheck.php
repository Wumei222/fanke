<?php
    //连接数据库
    include 'conn.php';

    //接收前端发送手机号码查询数据库是否可注册
    $telphone = isset($_GET['telphone'])? $_GET['telphone']:'';

    //写sql语句
    $sql= "SELECT * FROM users WHERE tel='$telphone'";

    //执行sql
    $result = $conn->query($sql);   
    if($result->num_rows){
        echo 'yes';
    }else{
        echo 'no';
    }
        
?>