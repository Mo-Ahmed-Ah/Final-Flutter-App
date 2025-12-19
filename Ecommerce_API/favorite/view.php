<?php
include('../connect.php');

$userid = filterRequest("userid");

getAllData("myfavorites", "favorite_user_id = $userid");