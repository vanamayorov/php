<?php

class TShirtProduct extends ShopProduct
{
    public $color;

    public function __construct($title, $authorName, $authorSurname, $price, $color){
        parent::__construct($title, $authorName, $authorSurname, $price);

        $this->color = $color;
    }

    public function getSummaryLine(){
        $summary = parent::getSummaryLine();
        $summary .= sprintf(',<small style="color:green;"> Color: %s</small>' , $this->getColor());
        return $summary;
    }

    public function getColor(){
        return $this->color;
    }
}