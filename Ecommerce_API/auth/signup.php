<?php 

include "../connect.php";

$username = filterRequest("username");
$password = sha1(filterRequest("password"));
$email = filterRequest("email");
$phone = filterRequest("phone");
$verfiycode = rand(10000, 99999);

$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ? OR user_phone = ?");
$stmt->execute([$email, $phone]);
$conunt = $stmt->rowCount();
if($conunt > 0){
    printState( "failure" , "Phone Number Or Email");
}else{
    $data = array(
        "user_name" => $username,
        "user_email" => $email,
        "user_phone" => $phone,
        "user_verfiycode" => $verfiycode,
        "user_password" => $password,
    );
    sendEmail($email , "Verify Code Ecommerce" , "Verify Code : $verfiycode");
    insertData("users" , $data );
}