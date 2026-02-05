<?php

namespace App\Actions\Fortify;

use Laravel\Fortify\Contracts\LoginResponse as LoginResponseContract;
use Illuminate\Http\Request;

class LoginResponse implements LoginResponseContract
{
    public function toResponse($request)
    {
        $user = auth()->user();

        if ($user->hasRole('super_admin')) {
            return redirect('/roles');
        } elseif ($user->hasRole('doctor')) {
            return redirect('/');
        } elseif ($user->hasRole('patient')) {
            return redirect('/');
        } elseif ($user->hasRole('pharmacist')) {
            return redirect('/');
        } else {
            return redirect('/');
        }
    }
}
