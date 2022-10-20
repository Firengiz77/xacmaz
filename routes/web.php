<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Middleware\XSS;
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

// Route::get('/clear-cache', function() {
//     return Artisan::call('config:cache');
//     // return what you want
// });



Route::get('/', function () {
    return view('welcome');
});


    Route::get('/resume',function() {
    return view('resume');
    });

Route::post('/sendresume',[MainController::class,'sendresume'])->name('sendresume');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


// Route::get('/linkstorage', function () {
//     Artisan::call('storage:link');
// });
