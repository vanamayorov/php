<?php



include_once 'ShopProduct.php';
include_once 'ShoesProduct.php';
include_once 'TShirtProduct.php';
include_once 'ShopProductWriter.php';





$tsh = new TShirtProduct(
"ASTROK",
 "H&M",
 "MEN",
  30, 
"black"
);


$shoes = new ShoesProduct(
"Yeezie",
"Adidas",
"Men",
400, 
44);


echo $tsh->getSummaryLine();
echo "<br>";

echo $shoes->getSummaryLine();
echo "<pre>";




echo ShopProductWriter::write($tsh);
echo "<br>";
echo ShopProductWriter::write($shoes);

echo ShopProductWriter::save($tsh, $tsh->getSummaryLine());
echo "<br>";
echo ShopProductWriter::save($shoes,$shoes->getSummaryLine());


