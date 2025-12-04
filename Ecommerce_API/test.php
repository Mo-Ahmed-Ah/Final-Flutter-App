<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$to = "mo.ahmed7777003330@gmail.com";
$subject = "hi";
$message = "I am Ahmed";
$headers = "From: support@ahmed.com" . "\n" . "CC:ahmed7777003330@gmail.com";

if(mail($to, $subject, $message, $headers)) {
    echo "Email sent successfully!";
} else {
    echo "Email failed to send!";
    print_r(error_get_last());
}
