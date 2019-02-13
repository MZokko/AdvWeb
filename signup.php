<?php

include('vendor/autoload.php');

$page_title = "sign up";

session_start();

use aitsyd\Account;

//handle POST request
if( $_SERVER['REQUEST_METHOD'] == 'POST' ){
  //handle POST variables
  $username = $_POST['username'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  
  //create instance of account class
  $account = new Account();
  $signup = $account -> signUp( $username, $email, $password );
  print_r($signup);
  if( $signup['success'] == true ){
    //signup is successful
    //create session variables for user
    $_SESSION['email'] = $signup['email'];
    $_SESSION['username'] = $signup['username'];
    $_SESSION['account_id'] = $signup['account_id'];
    
  }
}

include ('includes/navigation.inc.php');

$loader = new Twig_Loader_Filesystem('templates');

$twig = new Twig_Environment($loader, array(
    //'cache' => 'cache',
    ));
    
$template = $twig ->load('signup.twig');

echo $template -> render(array(
    'pages'=>$pages,
    'pageTitle'=>$page_title,
    'currentPage'=>$currentPage,
    ));

?>