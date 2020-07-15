<?php
//use League\Csv\Reader;
class CsvReader implements Readable
{
    private $file;

    public function __construct($filePath)
    {

        $this->file = new \SplFileObject($filePath);
    }

    public function getSrcId()
    {
        return $this->file->getFilename();
    }

    public function getSrcInfo()
    {
        return $this->file;
    }
    
    public function getContent()
    {
        $lines = [];

//         $csv = Reader::createFromPath('../input/small/top10milliondomains.csv', 'r');
//         $csv->setHeaderOffset(0);

//         $records = $csv->getRecords(); //returns all the CSV records as an Iterator object
        
//         echo $csv->getContent(); //returns the CSV document as a string

// exit;

        foreach ($this->file as $row) {
            list($num, $domain, $rank) = $row;

            $lines[] = [
                'domain' => trim($domain),
                'rank' => (float)$rank,
            ];
        }

        return $lines;
    }
}
