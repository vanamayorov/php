<?php

if(isset($_POST['btn'])){
    $email = $_POST['email'];
    $pass = $_POST['password'];
    registration($email, $pass);
    header("Location: login-form.php");
}

if(isset($_POST['btn-login'])){
    $email = $_POST['email-login'];
    $pass = $_POST['password-login'];
    login($email, $pass);
    header("Location: success.php");
}