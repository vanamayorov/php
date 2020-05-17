<?php


function cardInit(){
    $_SESSION['cart'] = [
        'products' => [
            // id => qty
        ],
    ];
}
function cardIsset(){
    return isset($_SESSION['cart']);
}

function addProducts($ids){
    if (in_array($_GET['product_id'], $ids)) {
        $_SESSION['cart']['products'][$_GET['product_id']]++;
    } else {
        $_SESSION['cart']['products'][$_GET['product_id']] = 1;
    }
    header('Location: card.php?action=list');
}

function checkout(){
    require_once "checkout.php";
    exit;
}

function removeItem($id){
    unset($_SESSION['cart']['products'][$id]);
}

function makeList($products){
    $cardItems = [];
    if (count ($_SESSION['cart']['products']) > 0) {
        
        foreach($_SESSION['cart']['products'] as $product_id => $qty) {
            $cardItems[] = (object)[
                'id' => $product_id,
                'qty' => $qty,
                'info' => (object)$products[$product_id],
            ];
        }
        return $cardItems;
    } else {
        $cardItems = [];
        return $cardItems;
    }
}

function removeAll(){
     $_SESSION['cart']['products'] = [];
   return  $cardItems = [];
}

function saveChanges(){
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
        
    }
    
}