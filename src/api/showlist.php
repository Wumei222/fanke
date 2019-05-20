<?php
    //连接数据库
    header('content-type:text/html;charset=utf-8');
    include 'conn.php';

    //接收参数，查询第一页数据，传给前端
    $page = isset($_GET['page'])?$_GET['page']:'';
    $num = isset($_GET['num'])?$_GET['num']:'';
    $search = isset($_GET['searchtxt'])?$_GET['searchtxt']:'';
    $type = isset($_GET['type'])?$_GET['type']:'';
    $order = isset($_GET['order'])?$_GET['order']:'';
    $value1 = isset($_GET['value1'])?$_GET['value1']:'';
    $value2 = isset($_GET['value2'])?$_GET['value2']:'';

    mysqli_set_charset($conn,'utf8');
    //每页下标公式
    $index = ($page-1) * $num +21;
     if($type){
          //不为空,需要排序
          $sql="SELECT * FROM allshirt ORDER BY $type $order LIMIT $index,$num";
     }else{
       //空,不需要排序
        //写入sql
          $sql="SELECT * FROM allshirt LIMIT $index,$num";
     }
    //执行sql
    $result=$conn->query($sql);
    //获取数据
    $content=$result->fetch_all(MYSQLI_ASSOC);
    //JSON_UNESCAPED_UNICODE防止中文乱码

    //写入sql 
    $sql1 = "SELECT * FROM allshirt";
    //执行sql
    $result1=$conn->query($sql1);
    // //写sql语句  模糊查询
    $sql2 ="SELECT * FROM allshirt WHERE descript LIKE '%$search%' LIMIT $index,$num";
    //执行sql
    $result2=$conn->query($sql2);
    $content1 = $result2->fetch_all(MYSQLI_ASSOC);
    //价格区间
    $sql3="SELECT * from allshirt WHERE nowprice BETWEEN '$value1' AND '$value2'";
    //执行sql
    $result3=$conn->query($sql3);
    $content2 = $result3->fetch_all(MYSQLI_ASSOC);
    $datalist = array(
      'data'=>$content,
      'total'=>$result1->num_rows,
      'page'=>$page,
      'num'=>$num,
      'search'=>$content1,
      'total2'=>$result2->num_rows,
      'pricearea'=>$content2,
      'total3'=>$result3->num_rows
    );
    echo json_encode($datalist,JSON_UNESCAPED_UNICODE);
?>