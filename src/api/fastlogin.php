<?php
    include 'conn.php';
    $user = isset($_GET['user'])?$_GET['user']:'';
    $sql= "SELECT * FROM  users WHERE tel='$user'";
    $result = $conn->query($sql);
    if($result->num_rows){
        echo 'yes';
    }else{
        echo 'no';
    }

?>