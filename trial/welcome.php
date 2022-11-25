<?php
session_start();

$namelog= $_SESSION["username"];
$deptlog= $_SESSION["dept"];

echo "welcome ".$namelog ." your department is the " .$deptlog ;


?>