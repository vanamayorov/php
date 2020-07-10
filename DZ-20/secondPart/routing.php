<?php

if (isset($_POST['btn'])) {
  $city = $_POST['city'];
  $commission = $_POST['rating'];
  $seller = $_POST['seller'];


  if (($city === "" && $commission === "" && $seller === "")) {
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id
      ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }
  if ($city) {
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id WHERE (`customer_city` = '{$city}')
      ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }
  if ($commission) {
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id WHERE (`rating` = '{$commission}')
      ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }
  if ($seller) {
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id WHERE `seller_name` = '{$seller}'
      ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }
  if ($city  &&  $commission) {
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id WHERE (`customer_city` = '{$city}') and (`rating` = '{$commission}')
      ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }
  if($city  &&  $seller){
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id WHERE (`customer_city` = '{$city}') and (`seller_name` = '{$seller}')
    ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }
  if($commission && $seller){
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id WHERE (`rating` = '{$commission}') and (`seller_name` = '{$seller}')
    ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }
  if($city  && $commission &&  $seller){
    $sql = "SELECT * FROM `customers` JOIN sellers ON customers.seller_id=sellers.seller_id WHERE (`customer_city` = '{$city}') and (`rating` = '{$commission}') and (`seller_name` = '{$seller}')
    ORDER BY sellers.seller_id ASC, customers.customer_id;";
  }

  $customers = Database::getSomeCustomers($sql);
}
