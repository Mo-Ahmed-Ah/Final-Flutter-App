<?php
include("../connect.php");

$itemid = filterRequest("itemid");
$userid = filterRequest("userid");

$stmt = $con->prepare("SELECT COUNT(cart_id) FROM `carts` WHERE cart_user_id = $userid AND cart_item_id = $itemid");
$stmt->execute();

$count = $stmt->rowCount();
$data = $stmt->fetchColumn();
if ($count > 0) {
    echo json_encode(array("status" => "success", "data" => $data));
} else {

    echo json_encode(array("status" => "success", "data" => '0'));
}