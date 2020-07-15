<?php


require_once './vendor/autoload.php';

require_once 'bootstrap.php';


//load the CSV document from a file path


$domainsRecords = $dataManager->getAll();

arsort($domainsRecords);


$finalRecords = HttpClient::getExist($domainsRecords);


require_once "views/top-500.php";
