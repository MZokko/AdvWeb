<?php
namespace aitsyd;
class OnlineBooking extends Database{
    public $onlinebooking = array();
    public function __construct(){
        parent::__construct();
    }
    public function getonlinebookingarticle(){
        //"SELECT * FROM home_Article" selection from article home and structure them
        $query = "SELECT * FROM online_booking ";
        
        //run the query
        $statement = $this -> connection -> prepare ($query);
        $statement -> execute();
        $result = $statement -> get_result();
        if($result->num_rows>0){
            while($row = $result->fetch_assoc()){
                array_push($this-> onlinebooking,$row);
            }
        }
         return $this->onlinebooking;
    }
    }
?>