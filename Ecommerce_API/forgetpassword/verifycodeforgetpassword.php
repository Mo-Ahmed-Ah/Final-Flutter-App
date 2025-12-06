<?php
include("../connect.php");

$email = filterRequest("email");
$verifycode = filterRequest("verifycode"); // FIXED SPELLING

$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? AND user_verfiycode = ?");
$stmt->execute([$email, $verifycode]);

$count = $stmt->rowCount();

result($conunt);