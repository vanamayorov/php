<?php

if (isset($_POST['btn'])) {
    $city = $_POST['city'];
    $commission = $_POST['rating'];
  
  
    if (($city === "" && $commission === "")) {
      $commission = null;
      $city = null;
      $sql = "SELECT * FROM `sellers` ORDER BY `seller_id` ASC";
    }

    if ($commission === "") {
      $commission = null;
      $sql = "SELECT * FROM `sellers` WHERE (`seller_city` = '{$city}') ORDER BY `seller_id` ASC";
    } elseif ($city === "") {
      $city = null;
      $sql = "SELECT * FROM `sellers` WHERE (`commission` = '{$commission}') ORDER BY `seller_id` ASC";
    }
    
    if ($city  &&  $commission) {
      $sql = "SELECT * FROM `sellers` WHERE (`seller_city` = '{$city}') and (`commission` = '{$commission}') ORDER BY `seller_id` ASC";
    }
  
  
    $sellers =  Database::getSomeSellers($sql);
  }