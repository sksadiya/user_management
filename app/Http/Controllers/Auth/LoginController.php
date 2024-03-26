<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
// use Illuminate\Http\Request;
// use Illuminate\Validation\ValidationException;
// use Illuminate\Support\Facades\Auth;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;
    // protected function attemptLogin(Request $request)
    // {
    //     // Attempt to authenticate the user
    //     if ($this->guard()->attempt(
    //         $this->credentials($request),
    //         $request->filled('remember')
    //     )) {
    //         // Check if the authenticated user has role 1 (admin)
    //         if ($this->guard()->user()->role == 1) {
    //             return true; // Proceed with the login attempt
    //         }
    //         // If the user does not have role 1, logout immediately
    //         $this->guard()->logout();
    //     }
    //     return false; // Login attempt failed
    // }

    // protected function sendFailedLoginResponse(Request $request)
    // {
    //     throw ValidationException::withMessages([
    //         $this->username() => [trans('auth.failed')],
    //     ]);
    // }

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
