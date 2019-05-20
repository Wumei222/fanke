<?php
    //准备参数
    // $servername = "localhost"; 
    // $username = "root";
    // $password = "";
    // $dbname = 'h51902';
    //防止乱码
    header('content-type:text/html;charset=utf-8');
 

    // 创建连接 对象
    // $conn = new mysqli($servername, $username, $password,$dbname);
    $conn = new mysqli("localhost", "root", "",'1903');
    // 检测连接
    if ($conn->connect_error) {
        die("连接失败: " . $conn->connect_error);
    } 
       //php页面中文乱码

       mysqli_set_charset($conn,'utf8');
    ?>