<?php 

include "../connect.php";

$email = filterRequest("email");
$password = sha1(filterRequest("password"));

$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? AND user_password = ? AND user_approve = 1");
$stmt->execute([$email, $password]);
$conunt = $stmt->rowCount();

result($conunt); 