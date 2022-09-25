<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\brandController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/allUser', [UserController::class,'allUser']);
Route::get('/allUserRole', [UserController::class,'AllRole']);
Route::get('/allBrand',[brandController::class,'allbrand']);

// ===============================================================

Route::post('/register', [UserController::class,'create']);
Route::post('/addUserRole', [UserController::class,'addUserRole']);

Route::post('/deleteRole', [UserController::class,'deleteRole']);
Route::post('/addBrand', [brandController::class,'store']);
Route::post('/deleteBrand', [brandController::class,'destroy']);
Route::post('/editBrand', [brandController::class,'edit']);



