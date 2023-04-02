<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\TeacherSubjectController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

/*
Route::post('/teachers', [TeacherController::class,'store']);
Route::get('/teachers', [TeacherController::class,'index']);
Route::get('/teachers/{id}', [TeacherController::class,'show']);
Route::patch('/teachers/{id}', [TeacherController::class,'update']);
Route::delete('/teachers/{id}', [TeacherController::class,'destroy']);
*/
Route::post('/login',[AuthController::class, 'login']);
Route::post('/register',[AuthController::class,'register']);

Route::group(['middleware'=>'auth:sanctum'],function(){
  Route::apiResource('/teachers', TeacherController::class);
  Route::apiResource('/subjects',SubjectController::class);
  Route::apiResource('/teachersubject',TeacherSubjectController::class);

});
