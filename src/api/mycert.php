<?php

    include 'conn.php';
    //写入sql 
    $sql = "SELECT * FROM ordersheet";
    //执行sql
    $result=$conn->query($sql);
    $content = $result->fetch_all(MYSQLI_ASSOC);

    $datalist = array(
        'data'=>$content,
        'total'=>$result->num_rows,
      );
      echo json_encode($datalist,JSON_UNESCAPED_UNICODE);
  
?>