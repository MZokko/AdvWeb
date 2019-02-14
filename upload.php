<?php


if($_SERVER['REQUEST_METHOD']=='POST'){
    
    $target_articleTitle = $_POST['articleTitle'];
    $target_dir = "upload/";
    $target_file = $target_dir.basename($_FILES["file"]["name"]);  ;

    $uploadOK = 1;
    
    $target_file = strtolower(str_replace(" ","-",$target_file));
    
    $file = $_FILES['file'];
    
    $fileName = $file["name"];
    $fileType = $file["type"];
    $fileTempName = $file["tmp_name"];
    $fileError = $file["error"];
    $fileSize = $file["size"];
    
    $fileExt = explode(".",$fileName);
    $fileActualExt = strtolower(end($fileExt));
    
    $allowed = array("jpg","jpeg","png");
    
    if(in_array($fileActualExt,$allowed)){
        if($fileError === 0){}else{
            echo "An Error occur";
        }
    }
    else{
        echo "Wrong Image type";
        exit();
    }
}

?>