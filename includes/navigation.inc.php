<?php
//start session
session_start();

use aitsyd\Navigation;
use aitsyd\Page;
$nav = new Navigation();
$pages = $nav -> pages;
$currentPage = Page::getName();

if(isset($_SESSION['email'])){
    $user = array();
    $user['email'] = $_SESSION['email'];
    $user['username'] = $_SESSION['username'];
}else{
    $user = null;
}

?>