<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 17:20
 */


$dispatcher = FastRoute\simpleDispatcher(function(FastRoute\RouteCollector $r) {
    $r->addRoute('GET', '/', 'Item/accueil');
    // {id} must be a number (\d+)
    $r->addRoute('GET', '/item/{id:\d+}', 'Item/show');
    $r->addRoute('GET', '/item/add', 'Item/add');
    $r->addRoute('GET', '/item/edit/{id:\d+}', 'Item/edit');
    $r->addRoute('GET', '/Newsletter', 'Item/Newsletter');
    $r->addRoute('POST', '/addMail', 'Item/addSubscriber');
    $r->addRoute('GET', '/accueil', 'Item/Accueil');
   // $r->addRoute('GET', '/Goodies', 'Item/Goodies');
    $r->addRoute('GET', '/Discographie', 'Item/Discographie');
    $r->addRoute('GET', '/Worldtour', 'Item/Worldtour');
    $r->addRoute('GET', '/galerie', 'Item/galerie');
    $r->addRoute('GET', '/Goodies', 'Item/menuGoodies');
    $r->addRoute('GET', '/Goodies/{GetId:\d+}', 'Item/affichageParGoodiesCategorie');

    $r->addRoute('GET', '/login', 'Admin/index');
    $r->addRoute('POST', '/login', 'Admin/index');
    $r->addRoute('GET', '/admin', 'Admin/adminPage');
    $r->addRoute('POST', '/admin', 'Admin/adminPage');

    $r->addRoute('GET', '/adminArticle', 'Admin/adminArticle');
    $r->addRoute('POST', '/adminArticle', 'Admin/adminArticle');
    $r->addRoute('POST', '/updateArticle', 'Admin/updateArticle');


    $r->addRoute('GET', '/adminDiscographie', 'Admin/adminDiscographie');
    $r->addRoute('POST', '/adminDiscographie', 'Admin/adminDiscographie');
    $r->addRoute('POST', '/uploadDiscographie', 'Admin/uploadDiscographie');


    $r->addRoute('GET', '/adminGalerie', 'Admin/adminGalerie');
    $r->addRoute('POST', '/adminGalerie', 'Admin/adminGalerie');
    $r->addRoute('POST', '/deleteGalerie', 'Admin/deleteGalerie');
    $r->addRoute('POST', '/uploadGalerie', 'Admin/uploadGalerie');


    $r->addRoute('GET', '/adminWorldtour', 'Admin/adminWorldtour');
    $r->addRoute('POST', '/adminWorldtour', 'Admin/adminWorldtour');
    $r->addRoute('POST', '/addWorldtour', 'Admin/addWorldtour');
    $r->addRoute('POST', '/deleteWorldtour', 'Admin/deleteWorldtour');

    $r->addRoute('GET', '/adminFanclub', 'Admin/adminFanclub');
    $r->addRoute('POST', '/adminFanclub', 'Admin/adminFanclub');

    $r->addRoute('GET', '/adminGoodies', 'Admin/adminGoodies');
    $r->addRoute('POST', '/adminGoodies', 'Admin/adminGoodies');
    $r->addRoute('POST', '/addGoodies', 'Admin/addGoodies');


    $r->addRoute('GET', '/logoutAdmin', 'Admin/logoutAdmin');




});

// Fetch method and URI from somewhere
$httpMethod = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];

// Strip query string (?foo=bar) and decode URI
if (false !== $pos = strpos($uri, '?')) {
    $uri = substr($uri, 0, $pos);
}
$uri = rawurldecode($uri);

$routeInfo = $dispatcher->dispatch($httpMethod, $uri);
switch ($routeInfo[0]) {
    case FastRoute\Dispatcher::NOT_FOUND:
        echo "404 NOT FOUND";
        break;
    case FastRoute\Dispatcher::METHOD_NOT_ALLOWED:
        $allowedMethods = $routeInfo[1];
        echo "405 METHOD NOT ALLOWED";
        break;
    case FastRoute\Dispatcher::FOUND:
        $handler = $routeInfo[1];
        $vars = $routeInfo[2];
        list($class, $method) = explode("/", $handler, 2);
        $class = APP_CONTROLLER_NAMESPACE . $class . APP_CONTROLLER_SUFFIX;
        echo call_user_func_array(array(new $class, $method), $vars);
        break;
}
