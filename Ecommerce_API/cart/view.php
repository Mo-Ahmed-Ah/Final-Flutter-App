<?php
include('../connect.php');

$userid = filterRequest("userid");

$data = getData('cartview', "cart_user_id = '$userid'", null, false);

$stmt = $con->prepare("SELECT SUM(itemPrice) AS totalPrice , SUM(itemsCount) AS totalCount FROM `cartview` 
WHERE cartview.cart_user_id = $userid
GROUP BY cart_user_id");

$stmt->execute();
$dataCountPrice = $stmt->fetch(PDO::FETCH_ASSOC);

echo json_encode(
    array(
        "status" => "success",
        "datacart" => $data,
        "countprice" => $dataCountPrice
    )
);