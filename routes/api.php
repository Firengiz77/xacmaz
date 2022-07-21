<?php

use App\Http\Controllers\ContactController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\GalleryTypeController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\VacancyController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::group(['middleware' => ['access', 'change_lang']], function () {
// all api
    Route::get('/',[MainController::class,'index'])->name('index');
    Route::post('/message', [MainController::class, 'message']);
});

// slider
Route::prefix('slider')->group(function(){
    Route::get('/',[SliderController::class,'index'])->name('getslider');
    Route::get('/{id}',[SliderController::class,'single'])->name('getsingleslider');
});
// news 
Route::prefix('news')->group(function(){
    Route::get('/',[NewsController::class,'index'])->name('getnews');
    Route::get('/{id}',[NewsController::class,'single'])->name('getsinglenews');
});

// Gallery 
Route::prefix('gallery')->group(function(){
    Route::get('/',[GalleryController::class,'index'])->name('getgallery');
    Route::get('/{id}',[GalleryController::class,'single'])->name('getsinglegallery');
});

// gallery type 
Route::prefix('type')->group(function(){
    Route::get('/',[GalleryTypeController::class,'index'])->name('gettype');
    Route::get('/{id}',[GalleryTypeController::class,'single'])->name('getsingletype');
});

// Vacancy 
Route::prefix('vacancy')->group(function(){
    Route::get('/',[VacancyController::class,'index'])->name('getvacancy');
    Route::get('/{id}',[VacancyController::class,'single'])->name('getsinglevacancy');
});

// partners 
Route::prefix('partner')->group(function(){
    Route::get('/',[PartnerController::class,'index'])->name('getpartner');
    Route::get('/{id}',[PartnerController::class,'single'])->name('getsinglepartner');
});
// partners 
Route::prefix('contact')->group(function(){
    Route::get('/',[ContactController::class,'index'])->name('getcontact');
    Route::get('/{id}',[ContactController::class,'single'])->name('getsinglecontact');
});










Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});




