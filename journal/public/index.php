<?php
const BASE_PATH = __DIR__ . '/../';
const CONTROLLER_PATH = 'web/controllers/';
require BASE_PATH . "Core/functions.php";
require BASE_PATH . '/vendor/autoload.php';
use Core\Router;

session_start();

require base("routes.php");

$uri = parse_url($_SERVER["REQUEST_URI"])["path"];


$router = new Router($routes);
$router->route($uri);

?>
