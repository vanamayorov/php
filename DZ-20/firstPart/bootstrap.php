<?php





error_reporting(E_ALL);

ini_set('display_errors', 'On');

ini_set('memory_limit', '5G');

date_default_timezone_set('Europe/Kiev');


$config = require_once 'config.php';



spl_autoload_register(function ($className) {
  include_once ('classes/' . str_replace('\\', '/', $className) .  '.php');
});


$db = new Database($config->db);


$primary_sellers = $db::getAllSellers();


$sellers = $db::getAllSellers();

require_once 'routing.php';

require_once "view.php";