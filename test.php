<?php
//phpinfo();
$pass = '12345678';
$hash = "$2y$10$7ysahVeRetmWtrWJSPAOGOa92M.U9bxONwmzWYh8eRJaTzYiD4LHK";

echo password_verify($pass,$hash) ? "true" : "false";
?>