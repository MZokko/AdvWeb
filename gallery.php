<?php
include('vendor/autoload.php');
//include('autoloader.php');
//navigation
include('includes/navigation.inc.php');
include('includes/uploadGallery.php');
//generate gallery
use aitsyd\Gallery;
$gallery = new Gallery();
$item = $gallery->getgalleryarticle();
//print_r($item)
$loader = new Twig_Loader_Filesystem('templates');

$twig = new Twig_Environment($loader, array(
    //'cache' => 'cache',
    ));

$template = $twig ->load('gallery.twig');

echo $template -> render(array(
    'user'=> $user,
    'pages'=>$pages,
    'pageTitle'=>$page_title,
    'currentPage'=>$currentPage,
    'gallery_images'=>$item
    ));

?>