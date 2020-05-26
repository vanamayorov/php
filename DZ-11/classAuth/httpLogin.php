<?php

class HttpLogin {
    private $fPath;

    private $accounts = [];

    public function __construct($filePath){
        $this->fPath = $filePath;
        
        $this->loadAccounts();
    }

    public function checkEmail($email, $hash){
        if($this->accountExists($email) && password_verify($hash, $this->accounts[$email]))
        {
            return true;
        }
        return false;
    }

    public function accountExists($email){
        if(is_array($this->accounts) && count($this->accounts) > 0){
            return array_key_exists($email, $this->accounts);
        }
        return false;
    }

    private function loadAccounts(){
    
        $this->accounts = json_decode(
            file_get_contents($this->fPath),
            true
        );
    }

    
    


}