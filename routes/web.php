<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'ShowController@index');
Route::get('/tag/{tag}', 'ShowController@lists')->name("tag.detail");
Route::get('/search', 'ShowController@search');
Route::any('/comment', 'ShowController@comment');
Route::get('/menu/{menu}', 'ShowController@lists')->name("menu.show");
Route::get('/detail/{id}', 'ShowController@detail');
Route::get('/category/{category}', 'ShowController@lists')->name("category.show");
