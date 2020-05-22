<?php

session_start();

define('BASE_URL', $_SERVER['HTTP_HOST']);
define('ASSETS_PATH', BASE_URL.'/assets');

require_once 'catalog.php';
require_once 'cart.php';
require_once 'functions.php';
require_once 'routing.php';

if(!cartIsset()) {
    cartInit();
}

render('cart/list', [
    'cartProducts' => cartProductsFilled($products),
    'suggested' => getSuggested($products, cartProducts())
]);
