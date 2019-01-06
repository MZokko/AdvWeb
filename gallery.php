<?php
$connection = mysqli_connect('localhost','website','password','data');
/**check connection**/
if($connection){
    echo "connected!";
}
else{
    echo "not connected";
}
//query 
$query="SELECT * FROM ";
?>