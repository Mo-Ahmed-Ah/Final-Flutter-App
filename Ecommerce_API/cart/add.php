<?php
include("../connect.php");

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");

$count = $count = getData(
    "carts",
    "cart_user_id = ? AND cart_item_id = ?",
    array($userid, $itemid),
    false
);



$data = array(
    "cart_user_id" => $userid,
    "cart_item_id" => $itemid,
);
insertData("carts", $data);





