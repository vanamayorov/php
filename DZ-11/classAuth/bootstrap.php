<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(-1);
date_default_timezone_set("Europe/Kiev");

define('ACCOUNTS_FILE', 'db.json');


require_once 'functions.php';
require_once 'basicHttpAuth.php';
require_once 'httpLogin.php';
require_once 'routing.php';
require_once 'register-form.php';




