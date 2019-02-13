<?php
session_start();

if(isset($_SESSION['email'])){
    unset($_SESSION['email']);
}
if(isset($_SESSION['username'])){
    unset($_SESSION['username']);
}
if(isset($_SESSION['account_id'])){
    unset($_SESSION['account_id']);
}
//send back the user to where they were before
$origin = $_SERVER['HTTP_REFERER'];
header("location:/");
?>