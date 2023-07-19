<?php

namespace App\Http\Controllers;

use App\Models\Meter;
use App\Models\Tagihan;
use App\Models\User;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\VarDumper;

class AdminController extends Controller
{
    //
    public function index()
    {
        return view("admin.dasboard", ['judul_menu' => 'dasboard']);
    }

    // 
    public function dataPelanggan()
    {
        $user = User::all();
        return view("admin.data-pelanggan", ['judul_menu' => 'data_pelanggan', 'dataUser' => $user]);
    }

    // 
    public function dataTagihan()
    {
        $tagihan = Tagihan::with('pembayaran', 'status', 'penggunaan', 'meter')->get();
        return view("admin.data-tagihan", ['judul_menu' => 'data_tagihan', 'tagihanPelanggan' => $tagihan]);
    }
}
