<?php
include('vendor/autoload.php');
//include('autoloader.php');
//navigation
include('includes/navigation.inc.php');
//generate online enquiry
use aitsyd\OnlineBooking;
$onlineBooking = new OnlineBooking();
$item = $onlineBooking->getonlinebookingarticle();

$page_title="Book Online";

//print_r($item);
$loader = new Twig_Loader_Filesystem('templates');

$twig = new Twig_Environment($loader, array(
    //'cache' => 'cache',
    ));

$template = $twig ->load('onlinebooking.twig');

echo $template -> render(array(
    'pages'=>$pages,
    'pageTitle'=>$page_title,
    'currentPage'=>$currentPage,
    'online_booking'=>$item
    ));

?>