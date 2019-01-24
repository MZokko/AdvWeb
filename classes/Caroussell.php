<?php
 
namespace aitsyd;
class Caroussell extends Database{
    public $img_caroussell = array();
   
    public function __construct(){
        parent::__construct();
    }
    
    public function get_img_caroussell(){
        $query = "SELECT image_file_name 
        FROM image 
        WHERE image_active = 1 
        LIMIT 3;";
        $statement = $this->connection-> prepare($query);
        $statement -> execute();
        $result = $statement->get_result();
        if($result-> num_rows>0){
            $img_caroussell =array();
            while($row=$result->fetch_assoc()){
                array_push($img_caroussell,$row);
                
            }
            return $img_caroussell;
        }
        else{
            return NULL;
        }
    }
    
}
?>