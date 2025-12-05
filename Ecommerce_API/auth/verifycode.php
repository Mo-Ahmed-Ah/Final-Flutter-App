<?php
include("../connect.php");

$email = filterRequest("user_email");
$verifycode = filterRequest("user_verfiycode"); // اسم الحقل الصحيح من POST

$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? AND user_verfiycode = ?");
$stmt->execute([$email, $verifycode]);

$count = $stmt->rowCount();
echo "$count\n$email\n$verifycode\n";

if ($count > 0) {

    $data = array("user_approve" => '1');

    updateData('users', $data, "user_email = '$email'");

} else {
    printState("Verifycode not Correct");
}
