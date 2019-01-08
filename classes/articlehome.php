<?php
namespace aitsyd;
class homearticle extends Database{
    public $article = array();
    public function __construct(){
        parent::__construct();
    }
    public gethomearticle(){
        $query = "SELECT 
        @homeartid := 	home_article_id AS home_article_id,
        home_article_title,
        home_article_description,
        home_article_date_added,
        @homeartimg :="
    }
}
?>