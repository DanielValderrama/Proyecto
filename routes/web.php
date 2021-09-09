<?php

use Illuminate\Support\Facades\Route;
use App\User;
use App\Empresa\rol;

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

Auth::routes();
Route::get('/', function () {
    return view('welcome');
});

Route::resource('empleado', 'EmpleadosController');

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/test', function () {
    $user =User::find(1);
    $user->rols()->sync([1,3]);
    return $user->rols;
});


Route::post('testUsuario', 'EmpleadosController@testUsuario');
