<?php
    //连接数据库
    include 'conn.php';
    //查找前5条数据渲染
    $sql= "SELECT * FROM allshirt LIMIT 0,5";
    //执行sql
    $result = $conn->query($sql);

    $content = $result->fetch_all(MYSQLI_ASSOC);
    //查找5条数据渲染
    $sql1= "SELECT * FROM allshirt LIMIT 5,4";
    //执行sql
    $result1 = $conn->query($sql1);
    $content1 = $result1->fetch_all(MYSQLI_ASSOC);
    //查找5条数据渲染
    $sql2= "SELECT * FROM allshirt LIMIT 9,2";
    //执行sql
    $result2 = $conn->query($sql2);
    $content2 = $result2->fetch_all(MYSQLI_ASSOC);
      //查找5条数据渲染
      $sql3= "SELECT * FROM allshirt LIMIT 11,4";
      //执行sql
      $result3 = $conn->query($sql3);
      $content3 = $result3->fetch_all(MYSQLI_ASSOC);

      $sql4= "SELECT * FROM allshirt LIMIT 15,6";
      //执行sql
      $result4 = $conn->query($sql4);
      $content4 = $result4->fetch_all(MYSQLI_ASSOC);
   
  $datalist = array(
      'data'=>$content,
      'data1'=>$content1,
      'data2'=>$content2,
     'data3'=>$content3,
     'data4'=>$content4,
    );
   
    echo json_encode($datalist,JSON_UNESCAPED_UNICODE);

?>