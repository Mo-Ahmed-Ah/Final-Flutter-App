<?php
include('../connect.php');

$userid = filterRequest("userid");

$data = getAllData('addresses', "address_user_id = $userid", null, false);

