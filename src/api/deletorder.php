<?php
    //连接数据库
    include 'conn.php';
    $gid = isset($_GET['gid'])? $_GET['gid']:'';
    $sql="DELETE FROM ordersheet WHERE gid='$gid'";
    //执行sql
    $result=$conn->query($sql);
    $sql1="SELECT * FROM ordersheet";
    $result1=$conn->query($sql1);
    $content = $result1->fetch_all(MYSQLI_ASSOC);
    echo json_encode($content,JSON_UNESCAPED_UNICODE);
    ?>
    


    
