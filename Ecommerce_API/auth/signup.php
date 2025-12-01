<?php 

include "../auth/signup.php";

$username = filterRequest("username");
$password = sha1(filterRequest("password"));
$email = filterRequest("email");
$phone = filterRequest("phone");
$verfiycode = 0;

$stmt = $conn->prepare("SELECT * FROM users WHERE user_email =? OR user_phone  =?");
$stmt->exec(array($email , $phone));
$conunt = $stmt->rowCount();
if($conn > 0){
    printFailure();
}else{
    $data = array(
        "user_name" => $username,
        "user_email" => $email,
        "user_phone" => $phone,
        "user_verfiycode" => $verfiycode,
        "user_password" => $password,
    );
    insertData("users" , $data);
}