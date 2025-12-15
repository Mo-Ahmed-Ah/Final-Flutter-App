<?php
include('../connect.php');

$categoryID = filterRequest('id');

getAllData("itemsview" , "category_id  = $categoryID");