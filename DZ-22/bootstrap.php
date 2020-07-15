<?php

error_reporting(E_ALL);

ini_set('display_errors', 'On');

ini_set('memory_limit', '5G');

date_default_timezone_set('Europe/Kiev');



$config = include_once 'config.php';




$dataManager = new DataManager($config->input);
