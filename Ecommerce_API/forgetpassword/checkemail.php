<?php 

include "../connect.php";

$email = ("email");
$verfiycode = rand(10000, 99999);

$stmt = $con->prepare("SELECT * FROM users WHERE user_email = ?");
$stmt->execute([$email]);
$conunt = $stmt->rowCount();

result($conunt); 

if($conunt > 0){
    $data = Array("user_verfiycode" => $verfiycode);
    updateData('users' , $data , "user_email = '$email'" , false);
    sendEmail($email , "Verify Code Ecommerce" , "Verify Code : $verfiycode");
}