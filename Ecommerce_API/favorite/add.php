<?php
include('../connect.php');

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");

$data = array(
    "favorite_user_id" => $itemid,
    "favorite_item_id" => $userid
);

insertData("favorites" , $data);