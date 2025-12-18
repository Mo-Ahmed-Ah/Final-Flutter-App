<?php
include('../connect.php');

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");


deleteData("favorites", "favorite_user_id = $userid AND favorite_item_id = $itemid");