<?php
namespace aitsyd;
class Account extends Database{
    public function __construct(){
        parent ::__construct();
    }
    public function signUp($username,$email,$password){
        $validuser = Validator::username($username);
        if($validuser['success']==false){
            $errors['username']=$validuser['errors'];
        }
        //email validate
        $validemail = filter_var($email,FILTER_VALIDATE_EMAIL);
        if($validemail==false){
            $errors['email'] = array('invalid email');
        }
    }
    
    
}
?>