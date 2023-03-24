<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TeacherController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

/*Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});*/

Route::post('/teachers', [TeacherController::class,'store']);
Route::get('/teachers', [TeacherController::class,'index']);
Route::get('/teachers/{id}', [TeacherController::class,'show']);
Route::patch('/teachers/{id}', [TeacherController::class,'update']);
Route::delete('/teachers/{id}', [TeacherController::class,'destroy']);
