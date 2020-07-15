<?php

class DataManager {
    private $sources;

    public function __construct(stdClass $init){
        
        $this->sources = [];
        
        $filesIterator = new FilesystemIterator($init->dir); 
        
        foreach($filesIterator as $fileinfo){
            $reader = sprintf("%sReader", ucfirst($fileinfo->getExtension()));
            
            if(class_exists($reader)){
                $this->addSource(
                    new $reader($fileinfo->getPathname())
                );
            }
        }

    }

    private function addSource(Readable $src){
        $this->sources[] = $src;
        
        
    }

    public function getAll(){
        $result = [];

        foreach($this->sources as $src){
            $result = array_merge($result, array_combine(
                array_column($src->getContent(), 'domain'),
                array_column($src->getContent(), 'rank')
            ));
        }
        return $result;
    }
}