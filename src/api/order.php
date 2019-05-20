<?php
    //连接数据库
    include 'conn.php';

    //接收前端传送数据，插入至数据库
    $gid = isset($_POST['gid'])? $_POST['gid']:'';
    $descript = isset($_POST['descript'])? $_POST['descript']:'';
    $color = isset($_POST['color'])? $_POST['color']:'';
    $size = isset($_POST['size'])? $_POST['size']:'';
    $num = isset($_POST['num'])? $_POST['num']:'';
    $imgurl = isset($_POST['imgurl'])? $_POST['imgurl']:'';
    $nowprice = isset($_POST['nowprice'])? $_POST['nowprice']:'';
    $store = isset($_POST['store'])? $_POST['store']:'';

    //用户名与密码插入至数据库
    $sql="INSERT INTO ordersheet (gid,imgurl,descript,nowprice,color,size,num,store) VALUES('$gid','$imgurl','$descript','$nowprice','$color','$size','$num','$store')";
    //执行sql
    $result = $conn->query($sql);
    if($result){
        //true，插入数据库成功
        echo 'yes';
    }else{
        //false，插入数据库失败
        echo 'no';
    }


?>