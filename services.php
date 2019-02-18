<?php
include('vendor/autoload.php');
//include('autoloader.php');
//navigation
include('includes/navigation.inc.php');
include('includes/uploadService.php');

//generate Service
use aitsyd\Service;
$servicearticle = new Service();
$item = $servicearticle->getservicearticle();

$loader = new Twig_Loader_Filesystem('templates');

$twig = new Twig_Environment($loader, array(
    //'cache' => 'cache',
    ));

$template = $twig ->load('service.twig');

echo $template -> render(array(
    'user'=> $user,
    'pages'=>$pages,
    'pageTitle'=>$page_title,
    'currentPage'=>$currentPage,
    'servicearticle'=>$item
    ));

?>