<?php

require_once 'bootstrap.php';


$domainsRecords = $dataManager->getAll();

arsort($domainsRecords);


$finalRecords = HttpClient::getExist($domainsRecords);


require_once "views/top-500.php";