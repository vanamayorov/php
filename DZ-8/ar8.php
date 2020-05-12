<?php
//Опрацювати приклад “4.22. Применение функции к каждому
//элементу массива”.
$arr = ['J', "B", "K", "A"];
array_walk($arr, function(&$value, $key){
    $value .= "!";
});
$numbers = range(1, 10);
array_walk($numbers, function(&$value, $key){
    $value += 3;
});
echo "<pre>";
print_r($arr);
print_r($numbers);
exit;