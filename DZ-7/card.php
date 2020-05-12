<?php
session_start();

require_once 'products.php';

if ($_GET['action'] === 'add') {
    
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [
            'products' => [
                //'100' => '3'
            ],
        ];
    }
    
    $ids = array_keys($_SESSION['cart']['products']);
    if (in_array($_GET['product_id'], $ids)) {
        $_SESSION['cart']['products'][$_GET['product_id']]++;
    } else {
        $_SESSION['cart']['products'][$_GET['product_id']] = 1;
    }

    header('Location: card.php?action=list');
}
if($_GET['action'] === 'checkout'){
    require_once "checkout.php";
    exit;
}
if($_GET['action'] === 'remove'){
    unset($_SESSION['cart']['products'][$_GET['product_id']]);
    header("Location: card.php?action=list");
}


if ($_GET['action'] === 'list') {

    if (count ($_SESSION['cart']['products']) > 0) {
        $cardItems = [];
        foreach($_SESSION['cart']['products'] as $product_id => $qty) {
            $cardItems[] = (object)[
                'id' => $product_id,
                'qty' => $qty,
                'info' => (object)$products[$product_id],
            ];
        }
        require_once 'views/card.view.php';
        exit;
    } else {
        $cardItems = [];
        require_once 'views/card.view.php';
    }
}
if ($_GET['action'] === 'delete'){
    $_SESSION['cart']['products'] = [];
    $cardItems = [];
    require_once 'views/card.view.php';
    exit;
}

if (isset($_POST['btn'])) {
    foreach($_POST['qty']['qty'] as $key => $value){
        if($_POST['qty']['qty'][$key] < 0){
            $_POST['qty']['qty'][$key] = 1;
        }
    }
    
    $new_values = array_combine(
        $_POST['qty']['id'],
        $_POST['qty']['qty']
    );
    foreach($new_values as $key => $value){
        $_SESSION['cart']['products'][$key] = $value;
        header("Location: card.php?action=list");
    }
    
}

