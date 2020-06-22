<?php

class HttpClient {



    public static function getExist($domains){
        
        $result = [];
        foreach($domains as $key => $value){
            $curl = curl_init();
            curl_setopt($curl,CURLOPT_URL, $key);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);
            curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
            curl_setopt($curl,CURLOPT_NOBODY,true);
            curl_setopt($curl,CURLOPT_HEADER,true);
            $out = curl_exec($curl);
            $httpcode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
            if($httpcode == 200){
                $result[$key] = $value;
            }
            curl_close($curl);
            
        }    
        return $result;
        
    }

}
