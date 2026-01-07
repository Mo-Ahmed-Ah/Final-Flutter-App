<?php
include("../connect.php");

$userid = filterRequest("userid");
$useraddressid = filterRequest("useraddressid");

$count = deleteData(
    "addresses",
    "address_user_id = '$userid' AND address_id = '$useraddressid' LIMIT 1"
);
