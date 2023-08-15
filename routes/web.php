<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// route utama
Route::get('/', [AdminController::class, 'index'])->middleware('auth', 'onlyAdmin');

// route untuk User (pelanggan dan juga admin adalah user) 
Route::prefix('/User')->middleware('auth')->group(function () {
    Route::get('/', [UserController::class, 'index']);
    Route::get('/status', [UserController::class, 'status']);
    Route::get('/password', [UserController::class, 'ubahPassword']);
    Route::get('/riwayat', [UserController::class, 'riwayat']);
});

// route untuk Admin (hanya admin yang boleh mengakses)
Route::prefix('/Admin')->middleware('onlyAdmin', 'auth')->group(function () {
    Route::get('/', [AdminController::class, 'index']);
    Route::get('/dataPelanggan', [AdminController::class, 'dataPelanggan']);
    Route::post('/add', [AdminController::class, 'addPelanggan']);
    Route::post('/edit', [AdminController::class, 'editPelanggan']);
    Route::get('/delete/{id}', [AdminController::class, 'deletePelanggan']);
    Route::get('/dataTagihan', [AdminController::class, 'dataTagihan']);
});

// route untuk Auth (pengelolaan authentikasi dan otorisasi)
Route::prefix('/auth')->group(function () {
    Route::get('/', [AuthController::class, 'index'])->name('login')->middleware('guest');
    Route::post('/login', [AuthController::class, 'login'])->middleware('guest');
    Route::get('/logout', [AuthController::class, 'logout'])->middleware('auth');
});

// route untuk dashboard
Route::get('/', [DasboardController::class, 'index'])->middleware('auth')
