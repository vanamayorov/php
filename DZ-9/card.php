<?php
session_start();

require_once 'products.php';
require_once 'functions.php';

if ($_GET['action'] === 'add') {

    if(!cardIsset()){
        cardInit();
    }
    
    $ids = array_keys($_SESSION['cart']['products']);
    addProducts($ids);
}
if($_GET['action'] === 'checkout'){
    checkout();
}
if($_GET['action'] === 'remove'){
    removeItem($_GET['product_id']);
    header("Location: card.php?action=list");
}


if ($_GET['action'] === 'list') {

   $cardItems = makeList($products);
    require_once 'views/card.view.php';
}
if ($_GET['action'] === 'delete'){
    $cardItems = removeAll();
    require_once 'views/card.view.php';
}

if (isset($_POST['btn'])) {
    saveChanges();
    header("Location: card.php?action=list");
}

