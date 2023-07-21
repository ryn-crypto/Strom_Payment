<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class OnlyAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // hanya boleh di akses oleh admin
        if ((Auth::user()->level_id) != 1) {
            // jika user dengan id selain 1 maka akan di kembalikan pada halaman \user
            return redirect('/User');
        }

        // user yang lolos pengecakan id bisa melanjutkan akses ke halaman yang dituju
        return $next($request);
    }
}
