<?php

function registration($email, $pass){
    $auth = new BasicHttpAuth(sprintf("%s/%s", __DIR__, ACCOUNTS_FILE));
    $auth->add($email, 
    password_hash($pass, PASSWORD_DEFAULT)
    );
}

function login($email, $pass){
    $login = new HttpLogin(sprintf("%s/%s", __DIR__, ACCOUNTS_FILE));
    $login->checkEmail($email, $pass);
    
}