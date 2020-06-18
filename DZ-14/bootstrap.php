<?php
error_reporting(E_ALL);

ini_set('display_errors', 'On');

ini_set('memory_limit', '5G');

date_default_timezone_set('Europe/Kiev');

$config = include_once 'config.php';

spl_autoload_register(function($className) use ($config){
    include_once sprintf($config->bootstrap->classes, $className);
});

$dataManager = new DataManager($config->input);