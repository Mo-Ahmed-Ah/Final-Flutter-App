<?php 
include("../connect.php");

$itemName = filterRequest("itemname");

getAllData("itemsview" , "item_name LIKE '%$itemName%' OR item_name_ar LIKE '%$itemName%'");