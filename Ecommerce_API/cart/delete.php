<?php
include("../connect.php");

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");

$count = deleteData("carts", "cart_id = (SELECT cart_id FROM carts WHERE cart_user_id = '$userid' AND cart_item_id = '$itemid' LIMIT 1)");
