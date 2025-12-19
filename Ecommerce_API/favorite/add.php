<?php
include('../connect.php');

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");

$data = array(
    "favorite_user_id" => $userid,
    "favorite_item_id" => $itemid
);

insertData("favorites" , $data);