<?php
//Опрацювати приклад “4.3. Инициализация массива диапазоном
//целых чисел”.
$cards = range(1, 10);
foreach($cards as $number){
    echo "$number\n";
}
echo "<pre>";
print_r($cards);
exit;