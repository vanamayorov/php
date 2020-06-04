<?php

class ShopProductWriter
{
    public static function write(ShopProduct $product)
    {
        if($product instanceof TShirtProduct){
            return sprintf('%s: %s; Price: <span style="color:green">%01.2f$</span>&nbspColor:&nbsp<i>%s</i>',
            $product->title,
            $product->getAuthor(),
            $product->price,
            $product->color
        );
        }elseif($product instanceof ShoesProduct){
            return sprintf('%s: %s; Price: <span style="color:green">%01.2f$</span>&nbspColor:&nbsp<i>%s</i>',
            $product->title,
            $product->getAuthor(),
            $product->price,
            $product->size
        );
        }
        
    }

    public static function save(ShopProduct $product ,$info)
    {
        if($product instanceof TShirtProduct){
            $file = "tshirt.txt";
            self::saveToFile($info, $file);
        }elseif($product instanceof ShoesProduct){
            $file = "shoes.txt";
            self::saveToFile($info, $file);
        }
    }

    private static function saveToFile($info, $file)
    {
        file_put_contents($file, $info, FILE_APPEND | LOCK_EX);
    }

}