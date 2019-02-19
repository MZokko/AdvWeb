<?php
use aitsyd\Database;
$db = new Database();


if($_SERVER['REQUEST_METHOD']=='POST'){

    $target_dir = "images/makeup";
    $errors = array();
    
    // print_r($_FILES);
    
    //if there are images
    if($target_file = $target_dir.basename($_FILES["file"]["error"]) !== 4){
        
        $target_file = strtolower(str_replace(" ","-",$target_file));
        
        $file = $_FILES['file'];
        
        $fileName = $_FILES['file']["name"];
        $fileType = $_FILES['file']["type"];
        $fileTempName = $_FILES['file']["tmp_name"];
        $fileError = $_FILES['file']["error"];
        $fileSize = $_FILES['file']["size"];
        
        $fileExt = explode(".",$fileName);
        $fileActualExt = strtolower(end($fileExt));
        $fileOriginalName = $fileExt[0];
        $fileNewName = $fileOriginalName.uniqid() . '.' . $fileActualExt;
        
        //check if file is an image
        $allowed_types = array(IMAGETYPE_GIF,IMAGETYPE_JPEG,IMAGETYPE_PNG);
        $image_check = exif_imagetype($_FILES['file']['tmp_name']);
        $type_check = array_search( $image_check , $allowed_types );
        
        if( $type_check == false ){
          $errors['format'] = "format not allowed";
        }
        
        // $allowed = array("jpg","jpeg","png");
        
        // if(in_array($fileActualExt,$allowed) ==false){
    
        //     $errors['image'] = 'wrong format';
        // }
        
    }
    else{
        $errors['image'] = 'no image';
    }
    
    // print_r($errors);
    if(count($errors) === 0){
        //move the file to destination
        
        $path = $target_dir . "/" . $fileNewName;
        echo $path;
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $path) == false){
            $errors['path'] = "destination not available";
        }
        else{
            //insert file in database (title description fileName)
            $query = "INSERT INTO `gallery`(`gallery_img`, `gallery_active`) VALUES (?,1)";
            $connection = $db->connection;
            $statement = $connection->prepare($query);
            $statement->bind_param('s',$fileNewName);
            $statement->execute();
        }
        
    }
}

?>
?>