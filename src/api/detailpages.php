<?php
    //连接数据库
    include 'conn.php';
    //接收前端data-uid 查询数据库
    $dataUid = isset($_GET['dataUid'])? $_GET['dataUid']:'';
         
      $sql= "SELECT * FROM allshirt WHERE gid=$dataUid";

    $result = $conn->query($sql);
    $content = $result->fetch_all(MYSQLI_ASSOC);

    echo json_encode($content,JSON_UNESCAPED_UNICODE);
    //JSON_UNESCAPED_UNICODE防止中文乱码

?>