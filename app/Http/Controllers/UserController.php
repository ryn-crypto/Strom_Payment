<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

class UserController extends Controller
{
    //
    public function index()
    {
        return view("user.profile", ['judul_menu' => 'profile']);
    }

    public function status()
    {
        return view("user.status", ['judul_menu' => 'status']);
    }

    public function riwayat()
    {
        return view("user.riwayat", ['judul_menu' => 'riwayat']);
    }

    public function ubahPassword()
    {
        return view("user.ubah-password", ['judul_menu' => 'password']);
    }
}
