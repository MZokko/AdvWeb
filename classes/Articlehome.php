<?php
namespace aitsyd;
class Articlehome extends Database{
    public $article = array();
    public function __construct(){
        parent::__construct();
    }
    public function gethomearticle(){
        //"SELECT * FROM home_Article" selection from article home and structure them
        $query = "SELECT
        home_article_id,
        home_article_title,
        home_article_description,
        home_article_img
        FROM home_article";
        
        //run the query
        $statement = $this -> connection -> prepare ($query);
        $statement -> execute();
        $result = $statement -> get_result();
        if($result->num_rows>0){
            while($row = $result->fetch_assoc()){
                array_push($this-> article,$row);
            }
        }
         return $this->article;
    }
    }

?>