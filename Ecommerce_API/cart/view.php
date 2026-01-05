<?php
include('../connect.php');

$userid = filterRequest("userid");

$data = getAllData('cartview', "cart_user_id = $userid", null, false);

$stmt = $con->prepare("SELECT SUM(itemPrice) AS totalPrice , COUNT(itemsCount) AS totalCount FROM `cartview` 
WHERE cartview.cart_user_id = $userid
GROUP BY cart_user_id");

$stmt->execute();
$dataCountPrice = $stmt->fetch(PDO::FETCH_ASSOC);

echo json_encode(
    array(
        "status" => "success",
        "datacart" => $data,
        "countandprice" => $dataCountPrice
    )
);