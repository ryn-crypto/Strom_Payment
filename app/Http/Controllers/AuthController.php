<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AuthController extends Controller
{
    public function index()
    {
        // tampilkan menu login
        return view('login');
    }

    // untuk login (membuat session)
    public function login(Request $request)
    {
        // ambil data inputan user
        $credential = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required']
        ]);

        if (Auth::attempt($credential)) {
            $request->session()->regenerate();


            return redirect()->intended('/User');
        }

        Session::flash('status', 'failed');
        Session::flash('pesan', 'Email tidak terdaftar');

        return redirect('/auth');
    }

    // untuk logout (menghapus session)
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        Session::flash('status', 'succes');
        Session::flash('pesan', 'Anda sudah logout');

        return redirect('/auth');
    }
}
