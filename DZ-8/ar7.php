<?php
//Опрацювати приклад “4.17. Сортировка массива по
//вычисляемому полю”.

$array = ['24', '2', '1', '5', '45',];  // для чисел
usort($array, function($a, $b){
    if($a > $b){
        return 1;
    } elseif($a == $b ){
        return 0;
    }else{
        return 0;
    }            
});
echo "<pre>";
print_r($array);

$arr = ["John", "Mark", "Joe", "Anderson", "Pele", "Christopher"]; //для строк
usort($arr, function($a, $b){
    if(strlen($a) > strlen($b)){
        return 1;
    }elseif (strlen($a) == strlen($b)) {
        return 0;
    }else {
        return -1;
    }
});
echo "<pre>";
print_r($arr);
exit;