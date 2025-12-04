<?php
include("../connect.php");

$email = filterRequest("user_email");
$verifycode = filterRequest("user_verifycode"); // اسم الحقل الصحيح من POST

$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? AND user_verifycode = ?");
$stmt->execute([$email, $verifycode]);

$count = $stmt->rowCount();

if ($count > 0) {

    $data = array("user_approve" => '1');

    updateData('users', $data, "user_email = '$email'");

} else {
    printState("Verifycode not Correct");
}
