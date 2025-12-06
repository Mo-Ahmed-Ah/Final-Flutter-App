<?php
include("../connect.php");

$email = filterRequest("email");
$verifycode = filterRequest("verifycode"); // FIXED SPELLING

$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? AND user_verfiycode = ?");
$stmt->execute([$email, $verifycode]);

$count = $stmt->rowCount();

if ($count > 0) {

    $data = array("user_approve" => '1');

    updateData('users', $data, "user_email = '$email'", false);

    echo json_encode(["status" => "success"]);

} else {
    echo json_encode(["status" => "verifycode_not_correct"]);
}
