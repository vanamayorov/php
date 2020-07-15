<?php

use GuzzleHttp\Client as CLI;
use GuzzleHttp\Exception\BadResponseException;

class HttpClient
{

    public static function getExist($domains)
    {

        $result = [];
        $client = new CLI;




        foreach ($domains as $key => $value) {

            try {
                $response = $client->request('GET', "$key");
                
                if ($response->getStatusCode() === 200) {
                    $result[$key] = $value; 
                }

                
            } catch (BadResponseException $e) {
                $response = $e->getResponse();
                $responseBodyAsString = $response->getBody()->getContents();
               
                
            }
        }
        return $result;
    }
}
