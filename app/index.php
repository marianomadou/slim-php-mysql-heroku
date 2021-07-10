<?php
error_reporting(-1);
ini_set('display_errors', 1);

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;
use Slim\Routing\RouteCollectorProxy;
use Illuminate\Database\Capsule\Manager as Capsule;


require __DIR__ . '/../vendor/autoload.php';
require_once './middlewares/CorsMiddleware.php';
require_once './controllers/UsuarioController.php';
require_once './controllers/PersonajeController.php';
require_once './controllers/PlantaController.php';

// Load ENV
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->safeLoad();

// Instantiate App
$app = AppFactory::create();

// Add error middleware
$app->add(\App\Middlewares\CorsMiddleware::class);

$app->addErrorMiddleware(true, true, true);
$app->addBodyParsingMiddleware();
$app->addRoutingMiddleware();

// Eloquent
$container=$app->getContainer();

$capsule = new Capsule;
$capsule->addConnection([
    'driver'    => 'mysql',
    'host'      => $_ENV['MYSQL_HOST'],
    'database'  => $_ENV['MYSQL_DB'],
    'username'  => $_ENV['MYSQL_USER'],
    'password'  => $_ENV['MYSQL_PASS'],
    'charset'   => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix'    => '',
]);

$capsule->setAsGlobal();
$capsule->bootEloquent();


// Routes

  $app->group('/plantas', function (RouteCollectorProxy $group) {
    $group->get('[/]', \PlantaController::class . ':TraerTodos');
    $group->get('/{id}', \PlantaController::class . ':TraerUno');
    /* $group->post('[/]', \PlantaController::class . ':CargarUno');
    $group->put('/{id}', \PlantaController::class . ':ModificarUno');
    $group->delete('/{id}', \PlantaController::class . ':BorrarUno'); */
  });

$app->get('[/]', function (Request $request, Response $response) {    
    $response->getBody()->write("Plantas vs Zombies 2 - API");
    return $response;

});

$app->run();