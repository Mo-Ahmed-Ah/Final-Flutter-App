<?php 

$to = "mo.ahmed7777003330@gmail.com";
$title ="hi";
$massage = "I am Ahmed";
$headers = "From: support@ahmed.com" . "\n" . "CC:ahmed7777003330@gmail.com";
mail($to, $title, $massage, $headers);

