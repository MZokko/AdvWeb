<?php
 
namespace aitsyd;
class Caroussell extends Database{
    public $img_caroussell = array();
   
    public function __construct(){
        parent::__construct();
    }
    public function get_img_caroussell(){
        $query = "SELECT FROM i";
        $statement = $this->connection-> prepare($query);
        $statement -> execute();
        $result = $statement->get_result();
    }
}
?>