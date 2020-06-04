<?php

class ShopProduct
{
    public $title;
    public $authorName;
    public $authorSurName;
    public $price;
    
    public function __construct($title, $authorName, $authorSurName, $price)
    {
        $this->title = $title;
        $this->authorName = $authorName;
        $this->authorSurName = $authorSurName;
        $this->price = $price;
    }

    public function getAuthor()
    {
        return "{$this->authorName} {$this->authorSurName}";
    }
    public function getPrice(){
        return $this->price;
    }

    public function getSummaryLine()
    {
        $summary = "&laquo;<b>{$this->title}</b>&raquo;";
        $summary .= ", <i>" . $this->getAuthor() . '</i>';
        $summary .= ", <i>" . $this->getPrice(). "$" . '</i>' ; 
        
        return $summary;
    }
    
}
