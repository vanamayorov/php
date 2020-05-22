<?php

if (isset($_GET['action'])) {
    
    if('add' === $_GET['action']) {
        $id = (int)$_GET['id'];
        productAdd($id);
        header("Location: {$_SERVER['PHP_SELF']}");
    }

    if('remove' === $_GET['action']) {
        $id = (int)$_GET['id'];
        productRemove($id);
        header("Location: {$_SERVER['PHP_SELF']}");
    }

    if('product' === $_GET['action']) {
        $id = (int)$_GET['id'];
        render('product/show', [
            'product' => array_merge(
                ['id' => $id],
                $products[$id]
            )
        ]);
        exit;
    }
    // if('order' === $_GET['action']) {
    //     // products list
    //     $fullName = $_POST['fullName'];
    //     $city = $_POST['city'];
    //     var_dump($fullName);
    //     exit;
    //     $orderJson = json_encode(
    //         array_merge(
    //             [
    //                 'ClientName' => $fullName,
    //                 'Shipping Address' => $city,
    //                 'Order Date' => date('l jS \of F Y h:i:s A'),
                    
    //             ],
    //             [
    //                 'products' => cartProductsFilled($products)
    //             ]
                
    //             ), JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT
    //         );
    //     // echo "<pre>";
    //     // print_r($orderJson);
    //     // exit;
    //     file_put_contents('orders.json', $orderJson, FILE_APPEND);
    //     header("Location: {$_SERVER['PHP_SELF']}");
    // }
}

if (isset($_POST['submitBtn'])) {
    if ('save' === $_POST['submitBtn']) {
        cartRecalc($_POST['items']);
        header("Location: {$_SERVER['PHP_SELF']}");
    }

    if ('clean-all' === $_POST['submitBtn']) {
        cartClear();
        header("Location: {$_SERVER['PHP_SELF']}");
    }

    if ('randomly' === $_POST['submitBtn']) {
        foreach(array_rand($products, rand(3,6)) as $id) {
            productAdd($id, rand(1, 3));
        }
        header("Location: {$_SERVER['PHP_SELF']}");
    }

    if ('checkout' === $_POST['submitBtn']) {
        render('cart/checkout', [
            'cartProducts' => cartProductsFilled($products)
        ]);
        exit;
    }
    if ('order' === $_POST['submitBtn']) {
        // products list
        $orderJson = json_encode(
            array_merge(
                [
                    'ClientName' => $_POST['fullName'],
                    'Shipping Address' => $_POST['city'],
                    'Order Date' => date('l jS \of F Y h:i:s A'),
                    
                ],
                [
                    'products' => cartProductsFilled($products)
                ]
                
                ), JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT
            );
        // echo "<pre>";
        // print_r($orderJson);
        // exit;
        file_put_contents('orders.json', $orderJson, FILE_APPEND);
        header("Location: {$_SERVER['PHP_SELF']}");
    }
    
}

