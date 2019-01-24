<?php
include('vendor/autoload.php');
//include('autoloader.php');
//navigation
include('includes/navigation.inc.php');

//generate About me

$loader = new Twig_Loader_Filesystem('templates');

$twig = new Twig_Environment($loader, array(
    //'cache' => 'cache',
    ));

$template = $twig ->load('aboutme.twig');

echo $template -> render(array(
    'pages'=>$pages,
    'pageTitle'=>$page_title,
    'currentPage'=>$currentPage,
    'aboutmearticle'=>$item
    ));

?>