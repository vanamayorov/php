<?php
// Опрацювати приклад “ 4.2. Хранение нескольких элементов для
//каждого ключа ”.
$books = [];
$books['fiction'][] = 'Harry Potter';
$books['fiction'][] = 1984;
$books['forKids'][] = 'Adventures of Tom Sawyer';

foreach($books as $genre => $title){
    foreach($title as $bookName){
        print "$bookName is $genre.\n";
    }
}

echo "<pre>";
print_r($books);
exit;
