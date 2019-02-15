<?php
use aitsyd\Database;
$db = new Database();


if($_SERVER['REQUEST_METHOD']=='POST'){
    
    $target_articleTitle = $_POST['articleTitle'];
    $target_articleDesc = $_POST['articleContent'];
    $target_dir = "images/makeup/";
    $errors = array();
    
    
    if(empty($target_articleTitle)){
        $errors['title']='title needed';
    }
    if( empty($target_articleDesc)){
        $errors['description']='description needed';
    }
    print_r($_FILES);
    if($target_file = $target_dir.basename($_FILES["file"]["error"]) !== 4){
        
        $max_size = 100000;
        
        $uploadOK = 1;
        
        $target_file = strtolower(str_replace(" ","-",$target_file));
        
        $file = $_FILES['file'];
        
        $fileName = $_FILES['file']["name"];
        $fileType = $file["type"];
        $fileTempName = $file["tmp_name"];
        $fileError = $file["error"];
        $fileSize = $file["size"];
        
        $fileExt = explode(".",$fileName);
        $fileActualExt = strtolower(end($fileExt));
        
        $allowed = array("jpg","jpeg","png");
        
        if(in_array($fileActualExt,$allowed) ==false){
    
            $errors['image'] = 'wrong format';
        }
        
    }
    else{
        $errors['image'] = 'no image';
    }
    print_r($errors);
    if(count($errors) === 0){
        //move the file to destination
        
        $path = $target_dir."/".$fileName;
        if(move_uploaded_file($_FILES["file"]["name"], $path) == false){
            $errors['path'] = "destination not available";
        }else{
            //insert file in database (title description fileName)
            $query = "INSERT INTO home_article(home_article_img, home_article_title, home_article_description, home_article_date_added, home_article_active) 
            VALUES (?,?,?,now(),1)";
            $connection = $db->connection;
            $statement = $connection->prepare($query);
            $statement->bind_param('sss', $fileName,$target_articleTitle,$target_articleDesc);
            $statement->execute();
            
            
        }
        
    }
    
}

?>