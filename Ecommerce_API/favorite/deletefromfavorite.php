<?php
include('../connect.php');

$favoriteid = filterRequest("favoriteid");


deleteData("favorites", "favorite_id = $favoriteid");