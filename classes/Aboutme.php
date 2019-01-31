<?php
namespace aitsyd;
class Aboutme extends Database{
    public $aboutme = array();
    public function __construct(){
        parent::__construct();
    }
    public function getaboutmearticle(){
        //"SELECT * FROM home_Article" selection from article home and structure them
        $query = "SELECT
        about_me_id,
        about_me_title,
        about_me_description,
        about_me_img
        FROM about_me";
        
        //run the query
        $statement = $this -> connection -> prepare ($query);
        $statement -> execute();
        $result = $statement -> get_result();
        if($result->num_rows>0){
            while($row = $result->fetch_assoc()){
                array_push($this-> aboutme,$row);
            }
        }
         return $this->aboutme;
    }
    }
?>