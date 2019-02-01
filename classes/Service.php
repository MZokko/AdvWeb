<?php
namespace aitsyd;
class Service extends Database{
    public $service = array();
    public function __construct(){
        parent::__construct();
    }
    public function getservicearticle(){
        //"SELECT * FROM home_Article" selection from article home and structure them
        $query = "SELECT
        services_id,
        services_title,
        services_description,
        services_img
        FROM services";
        
        //run the query
        $statement = $this -> connection -> prepare ($query);
        $statement -> execute();
        $result = $statement -> get_result();
        if($result->num_rows>0){
            while($row = $result->fetch_assoc()){
                array_push($this-> service,$row);
            }
        }
         return $this->service;
    }
    }

?>