<?php

use Illuminate\Routing\Router;
use Encore\Admin\Facades\Admin;

//Admin::registerHelpersRoutes();

Route::group([
    'prefix'        => config('admin.prefix'),
    'namespace'     => Admin::controllerNamespace(),
    'middleware'    => ['web', 'admin'],
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource("banner",BannerController::class);

});