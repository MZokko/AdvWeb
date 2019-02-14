<?php
namespace aitsyd;
class Gallery extends Database{
    public $gallery = array();
    public function __construct(){
        parent::__construct();
    }
    public function getgalleryarticle(){
        //"SELECT * FROM home_Article" selection from article home and structure them
        $query = "SELECT * FROM gallery ";
        
        //run the query
        $statement = $this -> connection -> prepare ($query);
        $statement -> execute();
        $result = $statement -> get_result();
        if($result->num_rows>0){
            while($row = $result->fetch_assoc()){
                array_push($this-> gallery,$row);
            }
        }
         return $this->gallery;
    }
    }
?>