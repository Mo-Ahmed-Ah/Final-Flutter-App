<?php
include "../connect.php";

$useraddressid = filterRequest("useraddressid");
$useraddressname = filterRequest("useraddressname");
$useraddresscity = filterRequest("useraddresscity");
$useraddresstreet = filterRequest("useraddresstreet");
$useraddresslat = filterRequest("useraddresslat");
$useraddresslong = filterRequest("useraddresslong");



$data=  array(
"address_name" => $useraddressname
"address_city" => $useraddresscity,
"address_street" => $useraddresstreet,
"address_lat" => $useraddresslat,
"address_long" => $useraddresslong
);

updateData("addresses", $data , "address_id = $useraddressid" );