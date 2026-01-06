<?php
include "../connect.php";

$userid = filterRequest("userid");
$useraddressname = filterRequest("useraddressname");
$useraddresscity = filterRequest("useraddresscity");
$useraddressstreet = filterRequest("useraddressstreet");
$useraddresslat = filterRequest("useraddresslat");
$useraddresslong = filterRequest("useraddresslong");

$data=  array(
"address_user_id" => $userid,
"address_name" => $useraddressname
"address_city" => $useraddresscity,
"address_street" => $useraddressstreet,
"address_lat" => $useraddresslat,
"address_long" => $useraddresslong
);

insertData("addresses", $data);