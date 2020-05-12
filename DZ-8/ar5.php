<?php
//Опрацювати приклад “4.8. Преобразование массива в строку”.
$arr = ['PHP', 'MySQL', 'Apache',]; 
$string = join(",", $arr);

echo "<pre>";
var_dump($string);
exit;
