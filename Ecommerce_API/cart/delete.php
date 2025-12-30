<?php
include("../connect.php");

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");

$count = deleteData(
    "carts",
    "cart_user_id = '$userid' AND cart_item_id = '$itemid'"
);
