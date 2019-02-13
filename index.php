<?php
include('vendor/autoload.php');
//include('autoloader.php');
//navigation
include('includes/navigation.inc.php');
print_r($_SESSION);

//generate home RTICLE
use aitsyd\Articlehome;
$articles= new Articlehome();
$item = $articles->gethomearticle();
$page_title = 'Home';


$loader = new Twig_Loader_Filesystem('templates');

$twig = new Twig_Environment($loader, array(
    //'cache' => 'cache',
    ));

$template = $twig ->load('home.twig');
echo $template -> render(array(
    'user'=>$user,
    'pages'=>$pages,
    'pageTitle'=>$page_title,
    'currentPage'=>$currentPage,
    'homearticle'=>$item
    ));

?>
