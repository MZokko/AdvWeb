<?php
namespace aitsyd;
class Navigation{
  public $pages = array();
  public $authStatus;
  public function __construct(){
    $this -> checkAuth();
    $this -> generateMainNavigation();
  }
  private function checkAuth(){
    if( isset( $_SESSION['email'] ) || isset( $_SESSION['account_id'] ) ){
      //if user is admin, set authStatus to 2, otherwise 1
      $this -> authStatus = ( isset($_SESSION['admin_id']) ) ? 2 : 1;
    }
    else{
      $this -> authStatus == 0;
    }
  }
  protected function generateMainNavigation(){
    switch( $this -> authStatus ){
      case 0:
        $this -> pages = array(
          'home' => 'index.php',
          'Gallery'=>'gallery.php',
          'Services'=>'services.php',
          'About Me'=>'aboutme.php',
          'Online Booking'=>'onlinebooking.php',
          'sign in' => 'signin.php',
        );
        break;
      case 1:
        $this -> pages = array(
          'home' => 'index.php',
          'Gallery'=>'gallery.php',
          'Services'=>'services.php',
          'About Me'=>'aboutme.php',
          'Online Booking'=>'onlinebooking.php',
          'sign out'=>'signout.php'
        );
        break;
      case 2:
        $this -> pages = array(
          'home' => 'index.php',
          'account' => 'account.php',
          'admin' => 'admin.php',
          'sign out' => 'signout.php'
        );
        break;
      default:
        break;
    }
  }
}
?>