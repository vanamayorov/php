<?php
//Опрацювати приклад “4.4 . Перебор элементов массива”.
$arr = [1 => 'one', 2 => 'two', 3 => 'three',];
foreach($arr as $key => $value){
    echo "<pre>";
    echo "key $key has value: $value\n";
}