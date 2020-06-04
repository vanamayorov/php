<?php

class ShoesProduct extends ShopProduct
{
    
    public $size;


    public function __construct($title, $authorName, $authorSurName, $price, $size)
    {
        parent::__construct($title, $authorName, $authorSurName, $price);

        $this->size = $size;

    }
    public function getSummaryLine()
    {
        $summary = parent::getSummaryLine();
        $summary .= sprintf(', <small style="color:green;">Size: %d </small>', $this->getSize());

        return $summary;
    }

    public function getSize()
    {
        return $this->size;
    }
}