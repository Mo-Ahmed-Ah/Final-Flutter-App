<?php
include "./connect.php";
$table = "users";

$data = array(
    "user_name" => "ahmed",
    "user_email" => "ahmed@gmial.com",
    "user_phone" => "1033833292",
    "user_verfiycode" => "15156",
);
$conn = insertData($table , $data);