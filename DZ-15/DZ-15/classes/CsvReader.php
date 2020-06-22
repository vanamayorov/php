<?php

class CsvReader implements Readable{
    private $file;

    public function __construct($filePath){
        
        $this->file = new SplFileObject($filePath);

    }

    public function getSrcId()
    {
        return $this->file->getFilename();
    }
    
    public function getSrcInfo()
    {
        return $this->file;
    }
    
    public function getContent(){
        $lines = [];

        $this->file->setFlags(SplFileObject::READ_CSV);

        foreach($this->file as $row){
            list($num, $domain, $rank) = $row;

            $lines[] = [
                'domain' => trim($domain),
                'rank' => (float)$rank,
            ];
        }

        return $lines;

    }
}