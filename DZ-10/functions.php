<?php

function render($page, array $data = [])
{
    $data['viewPage'] = $page;
    
    extract($data);

    require_once __DIR__."/views/layouts/master.view.php";
}

function getSuggested(array &$products, array $cartProducts = [])
{
    if (count($products) > 0) {
        if (count($cartProducts) > 0) {
            do {
                $id = array_rand($products, 1);
            } while(array_key_exists($id, $cartProducts));
        } else {
            $id = array_rand($products, 1);
        }

        return array_merge(
            ['id' => $id],
            $products[$id]
        );
    }

    return false;
    
}