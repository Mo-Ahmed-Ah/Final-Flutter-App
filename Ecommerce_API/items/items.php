<?php
include('../connect.php');

$categoryID = filterRequest('categoryId');

// getAllData("itemsview", "category_id  = $categoryID");

$userId = filterRequest("userId");
$stmt = $con->prepare("SELECT items1view.* , 1 as favorite FROM items1view
INNER JOIN favorites ON favorites.favorite_item_id = items1view.item_id AND favorites.favorite_user_id = $userId
WHERE category_id  = $categoryID
UNION ALL
SELECT * , 0 as favorite FROM items1view
WHERE category_id  = $categoryID AND item_id NOT IN ( SELECT items1view.item_id FROM items1view
INNER JOIN favorites ON favorites.favorite_item_id = items1view.item_id AND favorites.favorite_user_id = $userId)");

$stmt->execute();

$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
$count = $stmt->rowCount();
if ($count > 0) {
    echo json_encode(array("status" => "success", "data" => $data));
} else {
    echo json_encode(array("status" => "failure"));
}