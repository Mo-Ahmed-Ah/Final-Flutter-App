<?php
include("../connect.php");

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");

$count = getData("carts", "cart_user_id = '$userid' AND cart_item_id = '$itemid'");


$data = array(
    "cart_user_id" => $userid,
    "cart_item_id" => $itemid,
);
insertData("carts", $data);
